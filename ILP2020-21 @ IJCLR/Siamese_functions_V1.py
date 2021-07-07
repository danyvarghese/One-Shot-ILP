
# coding: utf-8

# In[1]:

import warnings
import sys
import os
warnings.filterwarnings("ignore", category=DeprecationWarning) 
if not sys.warnoptions:
    warnings.simplefilter("ignore")
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'

from tensorflow.keras import preprocessing 
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.layers import Conv2D, ZeroPadding2D, Activation, Input, concatenate
from tensorflow.keras.models import Model
from tensorflow.keras.layers import BatchNormalization
from tensorflow.keras.layers import MaxPooling2D
from tensorflow.keras.layers import Concatenate
from tensorflow.keras.layers import Lambda, Flatten, Dense
from tensorflow.keras.initializers import glorot_uniform
#from tensorflow.keras.engine.topology import Layer
from tensorflow.keras.regularizers import l2
from tensorflow.keras import backend as K
import numpy.random as rng
import numpy as np
import os
import pickle
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.utils import shuffle
#get_ipython().magic('matplotlib inline')
import sys


#PATH="Pickle_Data"
class Siamese_Loader:
    """For loading batches and testing tasks to a siamese net"""
    def __init__(self, path, data_subsets = ["train", "val"]):
        self.data = {}
        self.categories = {}
        self.info = {}
        
        for name in data_subsets:
            file_path = os.path.join(path, name + ".pickle")
            #print("loading data from {}".format(file_path))
            with open(file_path,"rb") as f:
                (X,c) = pickle.load(f)
                self.data[name] = X
                self.categories[name] = c

    def get_batch(self,batch_size,s="train"):
        """Create batch of n pairs, half same class, half different class"""
        X=self.data[s]
        n_classes, n_examples, w, h, col = X.shape

        #randomly sample several classes to use in the batch
        #categories = rng.choice(n_classes,size=(batch_size,),replace=False)
        categories = rng.choice(n_classes,size=(batch_size,))
        #initialize 2 empty arrays for the input image batch
        pairs=[np.zeros((batch_size, h, w,3)) for i in range(2)]
        #initialize vector for the targets, and make one half of it '1's, so 2nd half of batch has same class
        targets=np.zeros((batch_size,))
        targets[batch_size//2:] = 1
        for i in range(batch_size):
            category = categories[i]
            idx_1 = rng.randint(0, n_examples)
            pairs[0][i,:,:,:] = X[category, idx_1].reshape(w, h, 3)
            idx_2 = rng.randint(0, n_examples)
            #pick images of same class for 1st half, different for 2nd
            if i >= batch_size // 2:
                category_2 = category  
            else: 
                #add a random number to the category modulo n classes to ensure 2nd image has
                # ..different category
                category_2 = (category + rng.randint(1,n_classes)) % n_classes
            pairs[1][i,:,:,:] = X[category_2,idx_2].reshape(w, h,3)
        return pairs, targets
    
    def generate(self, batch_size, s="train"):
        """a generator for batches, so model.fit_generator can be used. """
        while True:
            pairs, targets = self.get_batch(batch_size,s)
            yield (pairs, targets)    

    def make_oneshot_task(self,N,trainingset,indices,s="val",language=None):
        """Create pairs of test image, support set for testing N way one-shot learning. """
        trainingset = [ int(x) for x in trainingset ]
        X=self.data[s]
        n_classes, n_examples, w, h,col = X.shape
        indices = [ int(x) for x in indices ]
        #print(indices)
        if language is not None:
            low, high = self.categories[s][language]
            if N > high - low:
                raise ValueError("This language ({}) has less than {} letters".format(language, N))
            #categories = rng.choice(range(low,high),size=(N,),replace=False)
            categories = trainingset
            
        else:#if no language specified just pick a bunch of random letters
            #categories = rng.choice(range(n_classes),size=(N,),replace=False)    
            categories = trainingset
            #print("Categories" , categories)
        true_category = trainingset[0]
        #print("\n True \n", true_category)
        #ex1, ex2 = rng.choice(n_examples,replace=False,size=(2,))
        ex1=indices[1]
        ex2=indices[0]
        #print("Sub",ex1,ex2)
        test_image = np.asarray([X[true_category,ex1,:,:]]*N).reshape(N, w, h,3)
        support_set = X[categories,indices,:,:]
        support_set[0,:,:] = X[true_category,ex2]
        support_set = support_set.reshape(N, w, h,3)
        #print("supportset",categories,indices)
        #print("True",true_category,ex2)
        targets = np.zeros((N,))
        targets[0] = 1
        targets, test_image, support_set = shuffle(targets, test_image, support_set)
        pairs = [test_image,support_set]

        return pairs, targets

    def test_oneshot(self,model,N,trainingset,indices,s="val",verbose=0):
        """Test average N way oneshot learning accuracy of a siamese neural net over k one-shot tasks"""
        #print("Reach Test")
        #print(N)
        #print(trainingset)
        #print(indices)
        n_correct = 0
        print(s)
        inputs, targets = self.make_oneshot_task(N,trainingset,indices,s)#plot_oneshot_task(inputs)#plot_oneshot_task(inputs)
        #plot_oneshot_task(inputs)
        probs = model.predict(inputs)
        return probs,targets
    
    def train(self, model, epochs, verbosity):
        model.fit_generator(self.generate(batch_size),)
    



def concat_images(X):
    """Concatenates a bunch of images into a big matrix for plotting purposes."""
    nc,h,w,_ = X.shape
    X = X.reshape(nc,h,w)
    n = np.ceil(np.sqrt(nc)).astype("int8")
    img = np.zeros((n*w,n*h))
    x = 0
    y = 0
    for example in range(nc):
        img[x*w:(x+1)*w,y*h:(y+1)*h] = X[example]
        y += 1
        if y >= n:
            y = 0
            x += 1
    return img


def plot_oneshot_task(pairs):
    """Takes a one-shot task given to a siamese net and  """
    fig,(ax1,ax2) = plt.subplots(2)
    ax1.matshow(pairs[0][0].reshape(300,300),cmap='gray')
    img = concat_images(pairs[1])
    ax1.get_yaxis().set_visible(False)
    ax1.get_xaxis().set_visible(False)
    ax2.matshow(img,cmap='gray')
    plt.xticks([])
    plt.yticks([])
    plt.show()

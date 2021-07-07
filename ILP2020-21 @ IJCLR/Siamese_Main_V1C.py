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
import sys
import pickle
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.utils import shuffle

import Siamese_functions_V1 as fn


def W_init(shape,name=None):
    """Initialize weights as in paper"""
    values = rng.normal(loc=0,scale=1e-2,size=shape)
    return K.variable(values,name=name)
#//TODO: figure out how to initialize layer biases in keras.
def b_init(shape,name=None):
    """Initialize bias as in paper"""
    values=rng.normal(loc=0.5,scale=1e-2,size=shape)
    return K.variable(values,name=name)

input_shape = (300, 300, 3)
left_input = Input(input_shape)
right_input = Input(input_shape)
#build convnet to use in each siamese 'leg'
convnet = Sequential()
convnet.add(Conv2D(64,(10,10),activation='relu',input_shape=input_shape,kernel_regularizer=l2(2e-4)))
convnet.add(MaxPooling2D())
convnet.add(Conv2D(128,(7,7),activation='relu',kernel_regularizer=l2(2e-4)))
convnet.add(MaxPooling2D())
convnet.add(Conv2D(128,(4,4),activation='relu',kernel_regularizer=l2(2e-4)))
convnet.add(MaxPooling2D())
convnet.add(Conv2D(256,(4,4),activation='relu',kernel_regularizer=l2(2e-4)))
convnet.add(Flatten())
convnet.add(Dense(4096,activation="sigmoid",kernel_regularizer=l2(1e-3)))

#call the convnet Sequential model on each of the input tensors so params will be shared
encoded_l = convnet(left_input)
encoded_r = convnet(right_input)
#layer to merge two encoded inputs with the l1 distance between them
L1_layer = Lambda(lambda tensors:K.abs(tensors[0] - tensors[1]))
#call this layer on list of two input tensors.
L1_distance = L1_layer([encoded_l, encoded_r])
prediction = Dense(1,activation='sigmoid')(L1_distance)
siamese_net = Model(inputs=[left_input,right_input],outputs=prediction)

optimizer = Adam(0.00006)
#//TODO: get layerwise learning rates and momentum annealing scheme described in paperworking
siamese_net.compile(loss="binary_crossentropy",optimizer=optimizer)
siamese_net.count_params()
PATH = "Pickle_Data" #CHANGE THIS - path where the pickled data is stored
loader = fn.Siamese_Loader(PATH)

print("SIAMESE")
char=sys.argv[1:-3]
size=len(sys.argv)-2
classsize=int(size/4)
print("Length",classsize)
trainingset = sys.argv[1:classsize+1]
print(trainingset)
trainindices= sys.argv[classsize+1:2*classsize+1]
print(trainindices)
testset = sys.argv[2*classsize+1:3*classsize+1]
print(testset)
testindices= sys.argv[3*classsize+1:-1]
print(testindices)
print("!")
batch_size = 6
best = -1
weights_path = os.path.join(PATH, "weights")
(inputs,targets)=loader.get_batch(batch_size)
loss=siamese_net.train_on_batch(inputs,targets)
probs,targets = loader.test_oneshot(siamese_net,classsize,trainingset,trainindices,"train",verbose=True)
targets=targets.tolist()
positivetarget=targets.index(1)
positiveprobability=probs[positivetarget]
#print(positiveprobability)
a = sum([abs(x - positiveprobability[0]) for x in probs])/(len(targets)-1)
#print(a)
#print(probs)
#print(targets)
#siamese_net.save(weights_path)
probs,targets = loader.test_oneshot(siamese_net,classsize,testset,testindices,"val",verbose=True)
targets=targets.tolist()
count=0
TP=0
FP=0
FN=0
TN=0
for i in probs:
	if (abs(positiveprobability-i)<=a):
		if(targets[count]==1):
			TP=TP+1
		else:
			FP=FP+1
	else:
		if(targets[count]==1):
			FN=FN+1
		else:
			TN=TN+1
print("Confusion",TP,TN,FP,FN)

accuracy=((TP+TN)/(TP+TN+FN+FP))*100
print(accuracy)
file= open("intermediatea.txt","a")
file.write("----------------------------------Siamese--------------------")
file.write("\n")
file.write(str(TP))
file.write("\n")
file.write(str(TN))
file.write("\n")
file.write(str(FP))
file.write("\n")
file.write(str(FN))
file.write("\n")
#print(probs)
#print(targets)
file= open("OSHD_Accuracy_Result.txt","a")
file.write("################ Siamese Network ################")
file.write("\n")
file.write("Average Accuracy : %s\n" % accuracy)

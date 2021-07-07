#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np


# In[2]:


m= 30 ##column
n= 3 ##rows
file_name='OSHD_Accuracy_Result.txt'
output_file=file_name[0:-4]+".eps"


# In[3]:


#print(output_file)


# In[4]:


file1 = open(file_name, 'r')
Lines = file1.readlines()
count = 1
# Strips the newline character
List_ILP=[]
List_SN=[]
for line in Lines:
    content=line.strip()
    if "Class" in content:
        #print(content)
        #print("class : ",content.split()[1])
        c=int(content.split()[1])-2
        l=int(Lines[count].split()[1])-1
        ilp=float(Lines[count+2].split()[0])
        sn=float(Lines[count+4].split()[3])
        #print(ilp)
        List_ILP.append(ilp)
        List_SN.append(sn)
        #print("\tIteration : ",Lines[count].split()[1])
        #ILP_String=str(c)+" "+str(l)+" "+str(ilp)
        #SN_String=str(c)+" "+str(l)+" "+str(sn)
        #List_ILP.append(ILP_String)
    count=count+1
#print(len(List_ILP))
#print(len(List_SN))
split_ilp = np.array_split(List_ILP, n)
split_sn = np.array_split(List_SN, n)


# In[5]:


#split_ilp[2][23]


# In[6]:


accuracy_ILP=[]
std_devn_ILP=[]
label=[]
for i in range(0,n):
    #print(i)
    label.append(i+2)
    #print(list(split_ilp[i]))
    #print(np.mean(split_ilp[i]))
    accuracy_ILP.append(np.mean(split_ilp[i]))
    #print(np.std(split_ilp[i]))
    std_devn_ILP.append((np.std(split_ilp[i]))/np.sqrt(m))
#print(accuracy)
#print(std_devn)
#print(label)
accuracy_SN=[]
std_devn_SN=[]
label=[]
for i in range(0,n):
    #print(i)
    label.append(i+1)
    #print(list(split_ilp[i]))
    #print(np.mean(split_ilp[i]))
    accuracy_SN.append(np.mean(split_sn[i]))
    #print(np.std(split_ilp[i]))
    std_devn_SN.append((np.std(split_sn[i]))/np.sqrt(m))


# In[7]:


#(np.std(split_ilp[i]))/np.sqrt(m)


# In[8]:


import matplotlib.pyplot as plt 


# In[ ]:





# In[9]:


import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import matplotlib.pyplot as mpl
mpl.rcParams['font.size'] = 15
from matplotlib import rc
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman'] + plt.rcParams['font.serif']


#plt.ticklabel_format(style='plain', axis='x', useOffset=False)

plt.gca().xaxis.set_major_locator(mticker.MultipleLocator(1))
plt.plot(label, accuracy_ILP,label='ILP(OSHD)')
plt.errorbar(label, accuracy_ILP,yerr = std_devn_ILP,fmt ='o')
plt.plot(label, accuracy_SN,label='Deep Learning\n(Siamese Net)')
plt.errorbar(label, accuracy_SN,yerr = std_devn_SN,fmt ='o')
plt.title("Comparison between ILP(OSHD) & Deep Learning(Siamese Net)")
plt.title('Comparison between ILP (OSHD) \n Vs \n Deep Learning(Siamese Net)')
plt.xlabel("\nNumber of Negative Examples")
plt.ylabel("Accuracy\n ")
plt.legend(loc='center right',bbox_to_anchor=(1.5,0.5))
#plt.savefig("graph.png")
#plt.savefig("output_2.png", bbox_inches="tight")
plt.savefig(output_file, format='eps',dpi=2000,bbox_inches="tight")
plt.show()


# In[ ]:





# In[10]:


#!pip install gnuplot_kernel


# In[ ]:





# In[11]:


#!python -m pip install plotnine


# In[ ]:





# In[ ]:





# In[12]:


#a


# In[ ]:





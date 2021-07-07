import sys
import pandas as pd
import random
size= len(sys.argv)/2
train = sys.argv[1:int(size+1)]
#print("train",train)
iteration = train[0]
#print("+ve",iteration)
indices= sys.argv[int(size+1):]
#print("indices",indices)
#print(train)
#print(iteration)
rule=[]
rule1=[]


file="Fundus_Test_Examples.pl"
open(file, 'w').close()
counter=1
for i in train:
	if str(i) == iteration:
		itemid=(int(i)*9)+int(indices[0])
		title='patientid_'+str(itemid)
		property1='example(diseasetype('+title+'),+'+str(1)+').'
		rule.append(property1)
	else:
		itemid=(int(i)*9)+int(indices[counter])
		counter=counter+1
		title='patientid_'+str(itemid)
		property1='example(diseasetype('+title+'),-'+str(1)+').'
		rule.append(property1)
size=len(rule)
file = open(file,"a") 
for i in range(0,size):
	print(rule[i])
	file.write(rule[i])
	file.write('\n')



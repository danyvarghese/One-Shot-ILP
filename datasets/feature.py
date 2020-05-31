import pandas as pd
rule=[]
read= pd.read_csv('Character_Malayalm_Dataset.csv')
df= pd.DataFrame(read)

char=len(df)

settings=':- modeh(2,alphabet(+character)).\n:- modeb(*,has_gemproperties(+character,-properties)).\n:- modeb(*,has_gemproperties_count(+properties,#int)).\n:- modeb(*,has_dirproperties(+character,-properties)).\n:- modeb(*,has_dirproperties_feature(+properties,#dir)).\n:- set(positive_example_inflation, 10).\n:- set(negative_example_inflation, 5).\n:- set(clause_length, 15).\n:- set(cross_validation_folds,6).\n:- set(engine,toplog).\n:- set(depth,10).\n:- set(i,10).\n:- set(maxneg,100).\n:- set(evalfn,compression).\n:- set(print,2).\n:- set(randomize_recall,false).\n:- set(theory_construction,incremental).\n:- set(verbose,2).\n:- show_settings.'
rule.append(settings)

rule.append('dir(se).')
rule.append('dir(sw).')
rule.append('dir(ne).')
rule.append('dir(nw).')
rule.append('\n')

for i in range(0,char):
	title='character_'+str(i)
	property1='character('+title+').'
	rule.append(property1)
rule.append('\n')
for i in range(0,char):
	rule.append('properties(loops_'+str(i)+').')
rule.append('\n')
for i in range(0,char):
	rule.append('properties(arcs_'+str(i)+').')
rule.append('\n')
for i in range(0,char):
	rule.append('properties(junctions_'+str(i)+').')
for i in range(0,char):
	rule.append('properties(terminals_'+str(i)+').')
rule.append('\n')
for i in range(0,char):
	rule.append('properties(starts_'+str(i)+').')
rule.append('\n')
for i in range(0,char):
	rule.append('properties(ends_'+str(i)+').')
rule.append('\n')


for i in range(0,char):
	title='character_'+str(i)
	property1='has_gemproperties('+title+',loops_'+str(i)+').'
	rule.append(property1)
	property1='has_gemproperties_count(loops_'+str(i)+','+str(df.loc[i,'L'])+').'
	rule.append(property1)


	property1='has_gemproperties('+title+',arcs_'+str(i)+').'
	rule.append(property1)
	property1='has_gemproperties_count(arcs_'+str(i)+','+str(df.loc[i,'A'])+').'
	rule.append(property1)


	property1='has_gemproperties('+title+',junctions_'+str(i)+').'
	rule.append(property1)
	property1='has_gemproperties_count(junctions_'+str(i)+','+str(df.loc[i,'J'])+').'
	rule.append(property1)


	property1='has_gemproperties('+title+',terminals_'+str(i)+').'
	rule.append(property1)
	property1='has_gemproperties_count(terminals_'+str(i)+','+str(df.loc[i,'T'])+').'
	rule.append(property1)
	if((str(df.loc[i,'S'])!='nan')):
		property1='has_dirproperties('+title+',starts_'+str(i)+').'
		rule.append(property1)
		property1='has_dirproperties_feature(starts_'+str(i)+','+str(df.loc[i,'S'])+').'
		rule.append(property1)
	if((str(df.loc[i,'E'])!='nan')):
		property1='has_dirproperties('+title+',ends_'+str(i)+').'
		rule.append(property1)
		property1='has_dirproperties_feature(ends_'+str(i)+','+str(df.loc[i,'E'])+').'
		rule.append(property1)
	rule.append('\n')

for i in range(0,char):
	title='character_'+str(i)
	property1='example(alphabet('+title+'),-'+str(3)+').'
	rule.append(property1)



size=len(rule)
open('oshd.pl', 'w').close()
file = open("oshd.pl","a") 
for i in range(0,size):
	#print(rule[i])
	file.write(rule[i])
	file.write('\n')
#for i in range(0,10):
#	title='character(character_'+str(i)+').'

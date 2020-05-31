# OSHD using ILP

OSHD is a special case of Top-Directed
Hypothesis Derivation. We have used GILPS(General Inductive Logic Programming System) system to implement the concept using  'YAP Prolog'. 


## Dataset

Malayalam is an official language for Kerala, a state of India. Unlike for other
languages, there is currently no efficient algorithm for Malayalam handwritten
recognition. The spherical feature of Malayalam characters are the main reason
for this problem.

## How to run

You will need  [YAP Prolog](https://github.com/vscosta/yap-6.3) and [GILPS](https://github.com/JoseCSantos/GILPS). 

Download  and place the _ILP & datasets_  folders in the GILPS root folder. 

Execute _feature.py_ for generating the prolog script for OSHD.

In _oshd.pl_, By Default, all the examples added as negative examples with weight **-3**. Please change one of them as positive by adding a weight of **+11** instead of **-3**. 

Then, in the command line, execute the _run.pl_ as follows;

yap -l run.pl

## References

* [1] Lake, B., Salakhutdinov, R., Gross, J., Tenenbaum, J.: One shot learning of simple
visual concepts. In: Proceedings of the 33rd Annual Conference of the Cognitive
Science Society. pp. 2568–2573 (2011)
* [2] Lake, B.M., Salakhutdinov, R., Tenenbaum, J.B.: Human-level concept learning through probabilistic program induction.
Science 350(6266), 1332–1338 (2015)

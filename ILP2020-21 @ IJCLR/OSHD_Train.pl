:- use_module('source/gilps').

% reads problem definition and saves learned theory in a file (this is optional)
char:-
  	read_problem('Fundus_ILP/fundus_train_BK'), read_problem('Fundus_ILP/Fundus_Training_Examples'),
	set(output_theory_file, 'Fundus_Theory_Formed.pl').
  
:- char.
:- build_theory.
:- halt.

:- use_module('source/gilps').
% reads problem definition and saves learned theory in a file (this is optional)
char:-
  read_problem('datasets/OSHD').
  
:- char.
:- build_theory.

:- use_module('source/gilps').

:- set(verbose, 3).
:- set(cross_validation_folds,10).
% note these theories are being evaluated against a test set (not the examples used to build the model)
char:-
  read_problem('Fundus_ILP/fundus_test_BK'),
  evaluate_theory('Fundus_Theory_Formed.pl', 'Fundus_ILP/Fundus_Test_Examples').


  
:-char.
:- halt.

# One-Shot Hypothesis Derivation(OSHD)

It is a novel approach for one-shot rule learning  using a logic program
declarative bias which is a special case of Top-Directed
Hypothesis Derivation (TDHD)[1]

## Objective

We apply OSHD to the challenging task of Malayalam character recognition. This is a challenging task due to spherical
and complex structure of Malayalam hand-written language. We compare our results with a state-of-the-
art Deep Learning approach, called Siamese Network, which has been
developed for one-shot learning.

## Dataset

Malayalam is an official language for Kerala, a state of India. Unlike for other
languages, there is currently no efficient algorithm for Malayalam handwritten
recognition. The spherical feature of Malayalam characters are the main reason
for this problem.

We selected the hand-written characters provided by [Omniglot](https://github.com/brendenlake/omniglot) [2,3] dataset.
Feature extraction is done by using a set of advanced geometrical features and directional features.

## Folder Structure

[ILP](https://github.com/danyvarghese/One-Shot-ILP/tree/master/ILP) - This folder contains the program codes and instructions to execute OSHD using ILP.

[Deep_Learning_Siamese_Net](https://github.com/danyvarghese/One-Shot-ILP/tree/master/Deep_Learning_Siamese_Net) - This folder contains the program codes and instructions to execute Deep Learning Siamese Network.

[datasets](https://github.com/danyvarghese/One-Shot-ILP/tree/master/datasets) - The Dataset folder contains  a directory & 3 text files

1. _Character_Malayalm_Dataset.csv_ : Holds the feature values which is extracted from the 'Omniglot' dataset fro Malayalam Characters.

2. _feature.py_ : This script will generate the prolog file(_OSHD.pl_) for the OSHD experiment which contains **Background Knowledge, Positive & Negative examples, Setup details for OSHD**

3. _OSHD.pl_ : prolog file.  By Default, all the examples added as negative examples with weight **-3**. Please change one of them as positive by adding a weight of **+11** instead of **-3**

4. _Malayalam_Alphabets_ : This files contains the Malayalam alphabets from [Omniglot] dataset. Sample Malayalam character is displayed below.

![Malayalam Character 'Ah' ](https://github.com/danyvarghese/One-Shot-ILP/tree/master/datasets/Malayalam/character09/1280_01.png)

## Reference

* [1] Muggleton, S.H., Santos, J., Tamaddoni-Nezhad, A.: TopLog: ILP using a logic
program declarative bias. In: Proceedings of the International Conference on Logic
Programming 2008. pp. 687–692. LNCS 5366, Springer-Verlag (2010)
* [2] Lake, B., Salakhutdinov, R., Gross, J., Tenenbaum, J.: One shot learning of simple
visual concepts. In: Proceedings of the 33rd Annual Conference of the Cognitive
Science Society. pp. 2568–2573 (2011)
* [3] Lake, B.M., Salakhutdinov, R., Tenenbaum, J.B.: Human-level concept learning through probabilistic program induction.
Science 350(6266), 1332–1338 (2015)

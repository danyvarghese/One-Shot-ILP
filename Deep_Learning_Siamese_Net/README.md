# One-Shot Character Recognition using Siamese Net

Here we use a state-of-the-art Deep Learning approach, called Siamese
Network [1], which has been developed for one-shot learning.


## Dataset

Malayalam is an official language for Kerala, a state of India. Unlike for other
languages, there is currently no efficient algorithm for Malayalam handwritten
recognition. The spherical feature of Malayalam characters are the main reason
for this problem.

We selected the hand-written characters provided by [Omniglot](https://github.com/brendenlake/omniglot) [1,2] dataset.
Feature extraction is done by using a set of advanced geometrical features and directional features.

## How to run

We have used _Jupyter Notebook_ for the implementation of one-shot character recognition. We have followed  the same concept  used in [keras-oneshot](https://github.com/sorenbouma/keras-oneshot) which is re-implementation of [1] using keras package.

You can download the _images_background_ & _images_evaluation_ zip files from the python dataset from [Omniglot](https://github.com/brendenlake/omniglot). Extract it and place in the root folder _Deep_Learning_Siamese_Net.  Execute the _One_Shot_Siamese.ipynb_ using jupyter notebook.


## Reference

* [1] Koch, G., Zemel, R., Salakhutdinov, R.: Siamese neural networks for one-shot image recognition. In: Proceedings of the 32 nd International Conference on Machine
Learning. vol. 37 (2015)

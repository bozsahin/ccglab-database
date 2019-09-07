# ccglab-grammars
sample grammars written in CCGlab, for linguistic analyses, modeling, training, etc.

You need to install <a href="https://github.com/bozsahin/ccglab">ccglab</a> repo to computationally try the
grammars included here.

<b>If you have a CCGlab grammar developed, feel free to send a pull request.
We will put it up in this repo.</b>

In each folder:

  <code>.ccg</code> file is the source grammar you type. (the grammar)

  <code>.ded</code> file is the lisp-ready code ccglab generates for linguistic analysis. (the lisp-ready grammar)

  <code>.ind</code> file is the lisp-ready code ccglab uses for model development, training and parse ranking. (the model- and lisp-ready grammar). It has the same format with <code>.ded</code>.

  <code>.sup</code> and <code>.supervision</code> files are for model training from sentence-lf pairs.

Other files are auxiliary.

These grammars are separated from ccglab source code for easier update.

-Cem Bozsahin

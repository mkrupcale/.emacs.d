# .emacs.d

## Introduction

This is my personal Emacs configuration. It is based largely on the [Emacs configs](https://github.com/edvorg/emacs-configs) of Edward E. Knyshov and uses his [`req-package`](https://github.com/edvorg/req-package) package dependency management system.

## Installation

To install for Emacs 27.1 or greater[1], simply clone this repo to your `$XDG_CONFIG_HOME/emacs` (i.e. `~/.config/emacs`) directory:

`git clone https://github.com/mkrupcale/.emacs.d.git ~/.config/emacs`.

For Emacs before 27.1, you should instead use the configuration directory `~/.emacs.d`.

## Usage

First the basic initialization in `init.el` is run, followed by the more complete initialization in `elisp/init.d/after-init.el`, which loads the package archives and installs the required packages to be configured.

Custom Emacs Lisp can be added to the `elisp` directory. Files particular to the initialization of Emacs (such as installing and configuring Emacs modes) are placed in the `elisp/init.d` directory.

## License

Most of the code in this repository is licensed under the MIT license. Exceptions to this are the [Emacs configs](https://github.com/edvorg/emacs-configs) by Edward E. Knyshov (LGPLv3+) and the MCNP mode (GPLv2+).

## References

1. [Emacs 27 NEWS](https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS.27#n170)

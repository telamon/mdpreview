mdpreview
=========

A simple GTK-based MarkDown previewer.


FIXME: Insert screenshot.

Features
--------

* Written in Python, so runs nearly everywhere.
* Remembers window state between invocations.
* Auto-reload that preserves scroll position.
* Theme support (github, bitbucket, solarized, whiteonblack)

Installation
------------

Requirements:

* python-webkit
* python-markdown
* pyinotify (Optional, for fast auto-reloading)


On Debian / Ubuntu systems, to install the dependencies (they're most probably
already installed):

    $ sudo apt-get install python-webkit python-markdown

You can run `mdpreview` directly from the git repository:

    $ git clone https://github.com/fboender/mdpreview
    $ cd mdpreview
    $ ./mdpreview README.md

If you wish to install it on your system, run the `install.sh` script.

Usage
-----

Basic usage:

    Usage: ./mdpreview <file.md>

    Options:
      -h, --help            show this help message and exit
      -t THEME, --theme=THEME
                            Theme (name or full path to .html). Default: github

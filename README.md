mdpreview
=========

Simple GTK-based MarkDown previewer.

FIXME: Insert screenshot.

Features
--------

* Written in Python, so runs nearly everywhere.
* Remembers window state between invocations.
* Themes (Github)

Installation
------------

Requirements:

* python-webkit
* python-markdown
* pyinotify (Optional, for fast autoreloading)


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

    mdpreview [--theme THEME] [--no-auto] <markdown_file.md>


mdpreview
=========

A simple QT-based Markdown previewer, designed to be used with an external
editor.

There are many Markdown previewers. `mdpreview` has been written to be as **easy
to use with an external editor** as possible. Just open `mdpreview`, open your
editor and start editing. `mdpreview` will automatically reload when the file
changes, detect when you're viewing the bottom of the document and
automatically scroll down on new content, and more.

It includes themes that closely resemble *github*, and *bitbucket*.

![](mdpreview.png)

*Screenshot: mdpreview running the `github` theme.*

Features
--------

* Written in Python, so runs nearly everywhere.
* Remembers window state between invocations.
* Auto-reload that preserves scroll position.
* Theme support (bitbucket, dark, github, solarized, whiteonblack)
* Vi motion keys (`j`, `k`) (see below)
* Append detection. If the end of the document is being viewed and new contents
  is appended, mdpreview automatically scrolls to the bottom.
* Optional *Keep-on-top* window hint, to keep the preview always on top.


Installation
------------

Requirements:

* `python3-pyqt5.qtwebkit` library
* Python3 `markdown` and `pyinotify` libraries


On Debian / Ubuntu systems, to install the dependencies (they're most probably
already installed):

    $ sudo apt-get install python3-pyqt5.qtwebkit
    $ pip3 install markdown
    $ pip3 install pyinotify

You can run `mdpreview` directly from the git repository:

    $ git clone https://github.com/fboender/mdpreview.git
    $ cd mdpreview
    $ ./mdpreview README.md

If you wish to install it on your system, run the `install.sh` script:

    $ sudo install.sh

This will also put an `uninstall.sh` script in `/usr/local/lib/mdpreview/uninstall.sh`.

Usage
-----

Basic usage:

    Usage: ./mdpreview <file.md>

    Options:
      --version             show program's version number and exit
      -h, --help            show this help message and exit
      -d, --debug           Show debugging info
      -k, --keep-on-top     Keep window on top
      -t THEME, --theme=THEME
                            Theme (name or full path to .html). Default: github

### Themes

Using a theme:

    mdpreview -t bitbucket ./README.md

Specify a full path to a theme:

    mdpreview -t ~/.mdpreview/mytheme.html ./README.md

The following themes are available by default:

* `bitbucket`
* `dark`
* `github`
* `solarized`
* `whiteonblack`

### Keybindings

* **`Esc`**, **`q`**: Quit
* **`j`**, **`k`**: Scroll down / up (vi keybindings)
* **`s`**: Save to HTML.

### Auto-reloading

mdpreview automatically reloads the Markdown file if it's been changed. It
preserves the scrolling position during reloading.

Licensing
---------

mdpreview is licensed under the GPLv3:

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

    For the full license, see the LICENSE file.


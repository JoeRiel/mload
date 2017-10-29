<!--*- markdown -*-->
mload: A Bash Script for Creating Maple Archives
================================================

`mload` is a bash script that loads Maple source files into a Maple
library archive (`.mla` file).  It uses tty maple and supports both
short and GNU-style long options.  It is a replacement for `sload`, a
Maplesoft internal tool.  Maple is a computer algebra system sold by
[Maplesoft](http://www.maplesoft.com/).

The source for the shell script is written as a literate program using
`noweb` and the `knoweb` extension.  The prebuilt shell script,
`mload`, and the documentation for using and rebuilding it,
`mload.pdf`, are included in the release.

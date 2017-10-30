<!--*- markdown -*-->
mload: A Bash Script for Creating Maple Archives
================================================

**mload** is a bash script that loads Maple source files into a Maple
library archive (*.mla* file).  It uses tty maple and supports both
short and GNU-style long options.  It is a replacement for *sload*, a
Maplesoft internal tool.  Maple is a computer algebra system from
[Maplesoft](https://www.maplesoft.com).

The source, **mload.nw**, for the shell script is a literate program
written with [noweb](https:github.com/nrnrnr/noweb) and the
[knoweb](https://github.com/JoeRiel/knoweb) extension.
For those without access to the noweb tool chain,
the prebuilt shell script and its documentation are included
in the [release](https://github.com/JoeRiel/mload/releases),
as **mload** and **mload.pdf**.

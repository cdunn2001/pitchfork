# Pitchfork [![Build Status](https://travis-ci.org/PacificBiosciences/pitchfork.svg)](https://travis-ci.org/PacificBiosciences/pitchfork)
Pitchfork is a collection of proof-of-concept building scripts for building pacbio software from the github projects using a dumb Makefile file to describe the software component dependencies. This is an unofficial, pedantic way to build software from pacbio's github projects. If you just need to access to pacbio's software distribution, and don't want to go the hard path, please ask for assistance from pacbio tech support at http://www.pacb.com/support/ .

    echo PREFIX=/opt/mybuild > settings.mk
    make init
    make blasr                                 # if you want to build your own blasr
    bash --init-file /opt/mybuild/setup-env.sh # either to use the build in the sub-shell
    source /opt/mybuild/setup-env.sh           # or     to use the build in current shell 

Overrides go in `.git/settings.mk` (symlinked via `./settings.mk`).

For more information, please visit the [wiki page](https://github.com/PacificBiosciences/pitchfork/wiki)

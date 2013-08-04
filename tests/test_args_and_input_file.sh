#!/bin/bash
# Let's pygmentize our current test file ;-)
./toolsapi pygmentize -l bash toolsapi:inputfile=tests/`basename $0`
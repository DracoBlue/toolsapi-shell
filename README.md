# ToolsApi Shell Client

* Version: 1.x-dev
* Date: not-yet-released
* Build Status: [![Build Status](https://secure.travis-ci.org/DracoBlue/toolsapi-shell.png?branch=master)](http://travis-ci.org/DracoBlue/toolsapi-shell)

This is the official bash client implementation of [toolsapi.com](http://toolsapi.com). It implements the latest [toolsapi http protocol](http://toolsapi.com/toolsapi-http-protocol).

## Requirements

* Default unix/linux tools: grep, cat, cut, tail and bash
* curl command line tool

## No-Installation installation

    $ curl -sS https://raw.github.com/DracoBlue/toolsapi-shell/master/toolsapi > toolsapi
    $ chmod +x toolsapi

## Installation Git Version

Clone the repository and enter the directory

    $ git clone git@github.com:DracoBlue/toolsapi-shell.git
    $ cd toolsapi-shell

Create a toolsapi.properties in either your `$HOME`-directory or as `/etc/toolsapi.properties`

    url=http://toolsapi.com/
    user=tester
    password=password

## Run Tests

    $ make test
    
## Example usage

Run dig from the remote machine (execute `dig github.com`):

    ./toolsapi dig github.com

Use an input file (prefix with `toolsapi:inputfile=`) on the remote machine (execute `pygmentize -l bash tests/test_pygmentize`):

    ./toolsapi pygmentize -l bash toolsapi:inputfile=tests/test_pygmentize.sh
    
## Status Quo of toolsapi-shell

The client is not yet 100% compliant to the [toolsapi http protocol](http://toolsapi.com/toolsapi-http-protocol).

Implemented:

- arguments (arg0..n)
- input files (file0..n -> must be prefixed with `toolsapi:inputfile=`)

Missing:

- input folders (folder0..n)
- output folders
- output files
- stdoutfile
- stderrfile
- stdinfile

## Changelog

- 1.x-dev
  - initial version 

## License

This work is copyright by DracoBlue (<http://dracoblue.net>) and not licensed under any license, yet.

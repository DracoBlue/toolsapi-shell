# ToolsApi Shell Client

* Version: 1.x-dev
* Date: not-yet-released
* Build Status: [![Build Status](https://secure.travis-ci.org/DracoBlue/toolsapi-shell.png?branch=master)](http://travis-ci.org/DracoBlue/toolsapi-shell)

This is the official bash client implementation of [toolsapi.com](http://toolsapi.com). It implements the latest [toolsapi http protocol](http://toolsapi.com/toolsapi-http-protocol).

## Requirements

* Default unix/linux tools: grep, cat, cut, tail and bash
* curl command line tool

## Credentials

Create a toolsapi.properties in either your `$HOME`-directory or as `/etc/toolsapi.properties`

    url=http://toolsapi.com/
    user=tester
    password=password

## Run toolsapi Without Installation

Just prefix your toolsapi call with `curl -sS https://raw.githubusercontent.com/DracoBlue/toolsapi-shell/master/toolsapi | bash -s `.

Example to call `dig github.com`

    $ curl -sS https://raw.githubusercontent.com/DracoBlue/toolsapi-shell/master/toolsapi | bash -s dig github.com

You can make this shorter, if you call once:

    $ alias toolsapi='curl -sS https://raw.githubusercontent.com/DracoBlue/toolsapi-shell/master/toolsapi | bash -s'
    
and afterwards:

    $ toolsapi dig github.com

## Run toolsapi with One-File-Installation

    $ curl -sS https://raw.githubusercontent.com/DracoBlue/toolsapi-shell/master/toolsapi > toolsapi
    $ chmod +x toolsapi
    $ ./toolsapi 

## Run it with Installation from Git

Clone the repository and enter the directory

    $ git clone git@github.com:DracoBlue/toolsapi-shell.git
    $ cd toolsapi-shell
    $ ./toolsapi 

## Run Tests

    $ make test
    
## Example usage

Run dig from the remote machine (execute `dig github.com`):

    ./toolsapi dig github.com

Use an input file (prefix with `toolsapi:inputfile=`) on the remote machine (execute `pygmentize -l bash tests/test_pygmentize`):

    ./toolsapi pygmentize -l bash toolsapi:inputfile=tests/test_pygmentize.sh

## Using templates

There is also the possibility to run specific templates provided by the toolsapi server.

For instance:

    ./toolsapi ffprobe:simple filename.mp4

will query the server for a template of `ffprobe`, which is called `simple` and convert it into:

    ./toolsapi ffprobe toolsapi:inputfile=filename.mp4

A full list of templates can be retrieved, by running ./toolsapi without any parameters.

## Status Quo of toolsapi-shell

The client is not yet 100% compliant to the [toolsapi http protocol](http://toolsapi.com/toolsapi-http-protocol).

Implemented:

- arguments (arg0..n)
- input files (file0..n -> must be prefixed with `toolsapi:inputfile=`)
- input folders (folder0..n)

Missing:

- output folders
- output files
- stdoutfile
- stderrfile
- stdinfile

## Changelog

- 1.x-dev
  - new raw.githubusercontent.com Link in alias and copy+paste one liner
  - added input folders
  - merged toolsapi-template into toolsapi-script #1
  - removed mktemp #2
  - initial version 

## License

This work is copyright by DracoBlue (<http://dracoblue.net>) and not licensed under any license, yet.

# asdf-lua

[![Build Status](https://travis-ci.org/Stratus3D/asdf-lua.svg?branch=master)](https://travis-ci.org/Stratus3D/asdf-lua)
[![Github Workflow](https://github.com/Stratus3D/asdf-lua/actions/workflows/workflow.yml/badge.svg)](https://github.com/Stratus3D/asdf-lua/actions/workflows/workflow.yml)

Lua plugin for [asdf version manager](https://github.com/HashNuke/asdf) based off of scripts in my [dotfiles repository](https://github.com/Stratus3D/dotfiles).

## Dependencies

* ANSI C compiler (like gcc).
    * OSX
        * `xcode-select --install`. Then install the "Command Line Tools" component from the dialog that appears.
    * Debian
        * `sudo apt-get install linux-headers-$(uname -r) build-essential`
    * RedHat
        * `sudo yum install devtoolset-2`

## Install

```
asdf plugin add lua https://github.com/Stratus3D/asdf-lua.git
```

## Use

Check the [asdf](https://github.com/HashNuke/asdf) readme for instructions on how to install & manage versions of Lua.

You can also read my [Lua Version Management with asdf-lua](http://stratus3d.com/blog/2016/12/30/lua-version-management-with-asdf-lua/) article which has complete instructions on installation and usage.

## Options

### Linux Readline

If you are installing Lua 5.4.x or greater on linux by default Lua will be compiled without readline. You can override this behavior by setting `ASDF_LUA_LINUX_READLINE=1` before running `asdf install`. See this thread for the details - http://lua-users.org/lists/lua-l/2020-07/msg00363.html

## Development

To modify this plugin into your `asdf` installation and see changes live, just create a symlink:

```
ln -s . ~/.asdf/plugins/lua
```

## Contributing

Feel free to create an issue or pull request if you find a bug.

## Issues

* Lua versions 4.0 and earlier do not install
* No way to specify specify custom configuration options

## License
MIT License

# asdf-lua

[![Build Status](https://travis-ci.org/Stratus3D/asdf-lua.svg?branch=master)](https://travis-ci.org/Stratus3D/asdf-lua)

Lua plugin for [asdf version manager](https://github.com/HashNuke/asdf) based off of scripts in my [dotfiles repository](https://github.com/Stratus3D/dotfiles).

## Install

```
asdf plugin-add lua https://github.com/Stratus3D/asdf-lua.git
```

## Use

Check the [asdf](https://github.com/HashNuke/asdf) readme for instructions on how to install & manage versions of Lua.

## Development

To modify this plugin into your `asdf` installation and see changes live, just create a symlink:

```
ln -s . ~/.asdf/plugins/lua
```

## Contributing

Feel free to create an issue or pull request if you find a bug.

## Issues

* No support for LuaJIT
* Lua versions 4.0 and earlier do not install
* No way to specify specify custom configuration options

## License
MIT License

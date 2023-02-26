# nvim-lsp-autoimport

Please read [help](doc/nvim-lsp-autoimport.txt) for details.

<!--toc:start-->
- [nvim-lsp-autoimport](#nvim-lsp-autoimport)
  - [Introduction](#introduction)
  - [Requirements](#requirements)
  - [Usage](#usage)
  - [Note](#note)
  - [License](#license)
<!--toc:end-->


## Introduction
nvim-lsp-autoimport is Neovim plugin that automatically applies `additionalTextEdits` when an item is selected from the completion menu provided by `nvim-lsp`.

## Requirements
This plugin requires the following plugins to be installed:

- Shougo/ddc.vim
- Shougo/pum.vim
- Shougo/ddc-source-nvim-lua

## Usage
Require the autoimport module in your init.lua file:
```lua
require("autoimport")
```
This plugin will automatically add import statements for symbols you use in your code.

## Note
Currently, only `python-lsp/python-lsp-server` with `rope` is supported.
- This is a personal project and its compatibility with other environments has not been sufficiently confirmed.
- It has been tested with `Shougo/ddc.vim`, `Shougo/pum.vim`, and `Shougo/ddc-source-nvim-lsp`, and it strongly depends on `Shougo/pum.vim` in particular.
- It has been confirmed to work only with `python-lsp/python-lsp-server`, and support for other LSPs is unconfirmed (due to lack of detailed knowledge of their compatibility status).

## License
This plugin is licensed under the MIT License. See [LICENSE](LICENSE) for more information.

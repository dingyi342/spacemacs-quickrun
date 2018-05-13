# spacemacs-quickrun

# Table of Contents

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->

- [spacemacs-quickrun](#spacemacs-quickrun)
- [Table of Contents](#table-of-contents)
- [Description](#description)
    - [Features:](#features)
- [Install](#install)
- [Key Bindings](#key-bindings)
- [Special Thanks](#special-thanks)

<!-- markdown-toc end -->

# Description

This layer adds support for single file executions using [quickrun](https://github.com/syohex/emacs-quickrun).

## Features:

* Single file execution using [emacs-quickrun](https://github.com/syohex/emacs-quickrun).

# Install

To use this configuration layer, add it to your `~/.spacemacs`. You will need to add javascript to the existing `dotspacemacs-configuration-layers` list in this file.

# Key Bindings

| Key Binding | Description                                          |
|-------------|------------------------------------------------------|
| `SPC c q q` | run current buffer                                   |
| `SPC c q a` | run current buffer with arguments                    |
| `SPC c q s` | run current buffer in shell for interactive programs |
| `SPC c q h` | select configuration and run current buffer          |

# Special Thanks

* [quickrunを魔改造して開発中のプログラムの実行をチョーチョー簡単にする！](http://emacs.rubikitch.com/my-quickrun)

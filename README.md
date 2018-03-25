# spacemacs-quickrun

# Table of Contents

- [Description](#description)
- [Install](#install)
- [Key Bindings](#key-bindings)

# Description

This layer adds support for single file executions using [quickrun](https://github.com/syohex/emacs-quickrun).

# Install

To use this configuration layer, add it to your `~/.spacemacs`. You will need to add javascript to the existing `dotspacemacs-configuration-layers` list in this file.

# Key Bindings

| Key Binding | Description                                          |
|-------------|------------------------------------------------------|
| `SPC c q q` | run current buffer                                   |
| `SPC c q a` | run current buffer with arguments                    |
| `SPC c q s` | run current buffer in shell for interactive programs |
| `SPC c q h` | select configuration and run current buffer          |

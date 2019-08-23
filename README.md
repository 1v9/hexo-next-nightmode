# Hexo NexT Night Mode

![Theme Version](https://img.shields.io/badge/NexT-v7.3.0+-blue.svg?style=flat-square)
![Package Version](https://img.shields.io/github/package-json/v/1v9/hexo-next-nightmode?style=flat-square)

Add Night Mode support for NexT.

> Try scheme Mist for now, since nightmode.styl lacks much...

## Install

```bash
npm i 1v9/hexo-next-nightmode
```

## Configure

You can add follow options in both **hexo** or **theme** `_config.yml`.

```yml
next_nightmode:
  enable: false
  # FontAwesome or ForkAwesome icon in sidebar button
  icon: lightbulb-o
  # Text for sidebar button
  text: Night Mode
  # If true, you need to create a totally customized style file named nightmode.styl in source/_data directory.
  # For now, merging styles is not supported.
  custom: false
  # If ture, when you disable Night Mode, Hexo will show warning messages in your console.
  reminder: false
```

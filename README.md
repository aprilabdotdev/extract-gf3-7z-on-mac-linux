# extract-gf3-7z-on-mac-linux

This repo provides a solution to batch extract the 7z compressed GaoFen-3 data on a Unix system (including MacOS and Linux). 

此 repo 提供了一个在 MacOS、Linux（这里也包括 Windows 下的 WSL）环境下批量解压高分三号 7z 格式压缩格式的方法。

## What's special about this 7z format?

Some distributed GaoFen-3 data are compressed into 7z using the zstd compress algorithm ([what is zstd?](https://github.com/mcmilk/7-Zip-zstd)). This compress codec is not supported by mainstream compression/extraction software, so additional software packages are required for extracting this kind of compress file. 

## Installation

First of all, you need to install https://github.com/jinfeihan57/p7zip into your local. You can either follow the instructions from the link above, or you can use the `install.sh` script in this repo. 

> :warning: **add p7zip bin to system path**: In `install.sh`, the `.p7zip/bin` is added to the system path for your convenience. Here the bash is assumed to be the default shell environment. If you use others, i.e., zsh or fish, you should modify the last line in `install.sh` to modify the system path environment in the correct profile. i.e., use `~/.zprofile` instead if you are working with MacOS and using `zsh`.

## Usage

```bash
# 1. /path/to/dir/ is the dir where you put all the .7z files;
# 2. make sure extract.sh and install.sh are set to have executable permissions.
./extract.sh /path/to/dir/
```

## Disclaimer

This repo does not provide sample GF3 data. Using your own data is advised. 

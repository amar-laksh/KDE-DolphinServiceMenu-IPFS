# KDE-DolphinServiceMenu-Imgur

Upload images on imgur, either anonymously or with an user account

### Prerequisites

- [curl](https://curl.haxx.se) is a command line tool and library for transferring data with url syntax
- [coreutils](https://www.gnu.org/software/coreutils) are the basic file, shell and text manipulation utilities of the gnu operating system
- [jq](https://stedolan.github.io/jq) is a lightweight and flexible command-line json processor
- [sed](https://www.gnu.org/software/sed) (stream editor) is a non-interactive command-line text editor
- [xdg-utils](https://freedesktop.org/wiki/Software/xdg-utils) is a set of tools that allows applications to easily integrate with the desktop environment of the user, regardless of the specific desktop environment that the user runs

### Installing

1. Register an application on [imgur](https://api.imgur.com/oauth2/addclient), the 'client id' and the 'client secret' are needed for the imgurconfig.sh script

2. Run `./imgurconfig.sh install` to install the service

3. Run the imgurconfig.sh script to configure the service:  
   `./imgurconfig.sh anon`  
   `./imgurconfig.sh user`  
   [![KDE DolphinServiceMenu Imgur | run imgurconfig.sh](https://img.youtube.com/vi/qeelricT_ns/default.jpg)](https://youtu.be/qeelricT_ns)  
   or use `./imgurconfig.sh -h` for help

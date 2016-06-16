[![Build Status](https://travis-ci.org/torch/distro.svg?branch=master)](https://travis-ci.org/torch/distro)

Self-contained Torch installation
============

Install dependencies. Uses apt-get on Ubuntu, which might require sudo. Uses brew on OSX.
```sh
curl -s https://raw.githubusercontent.com/DigitalGenius/distro/master/install-deps | bash
```
Clone this repo and install torch distribution, together with a lot of nice goodies.
```sh
git clone https://github.com/DigitalGenius/distro.git ~/torch --recursive
cd ~/torch; ./install.sh
```

By default Torch will install LuaJIT 2.1. If you want other options, you can use the command:
```sh
TORCH_LUA_VERSION=LUA51 ./install.sh
TORCH_LUA_VERSION=LUA52 ./install.sh
```

Now, everything should be installed. Either open a new shell, or source your profile via
```sh
. ~/.bashrc  # or: . ~/.zshrc
th -e "print 'I just installed Torch! Yesss.'"
```

Note: If you use a non-standard shell, you'll want to run this command
```sh
./install/bin/torch-activate
```

### Updating the distro repo
To update pulling from the latest submodules:
```bash
git submodule foreach git pull origin master
```

In case there are some conflicts, if we don't want to manually inspect and accept the remote, 
we can for the specific submodule:
```bash
git fetch --all
git reset --hard origin/master
```
Or if it's a different brunch from master:
```bash
git reset --hard origin/your_branch
```


Tested on Ubuntu 14.04, CentOS/RHEL 6.3 and OSX

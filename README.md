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
```bash
./update.sh
```

In case we want to sync with the upstream repo:
* Configure an upstream:
  * Check if there is any upstream branch
  ```bash
  git remote -v
  ```
  If there's not:
  ```bash
  git remote add upstream https://github.com/torch/distro
  git remote -v
  ```
  
  * Sync with the upstream: 
  ```bash
  git fetch upstream
  git checkout master
  git merge upstream/master
  ```

Tested on Ubuntu 14.04, CentOS/RHEL 6.3 and OSX

[![Build Status](https://travis-ci.org/igorvisi/zsh-up.png)](https://travis-ci.org/igorvisi/zsh-up)

# zsh-up

Quickly go back to a specific parent directory instead of typing `cd ../../..` redundantly.


---


From [Tarrash/zsh-bd](https://github.com/Tarrasch/zsh-bd)

## Install

All you need to do is to source `up.zsh`. Here's the manual installation

    mkdir -p $HOME/.zsh/plugins/up
    curl https://raw.githubusercontent.com/igorvisi/zsh-up/master/up.zsh > $HOME/.zsh/plugins/up/up.zsh
    print -- "\n# zsh-up\n. \$HOME/.zsh/plugins/up/up.zsh" >> $HOME/.zshrc

Restart your shell (or run `zsh`)

### [Antigen](https://github.com/zsh-users/antigen)

If you prefer antigen over manual installation

    antigen-bundle igorvisi/zsh-up

## Usage

    $ mkdir -p a/b/c/d
    $ cd a/b/c/d
    $ up b
    $ ls
    c
    $ cd c/d
    $ up 2
    $ ls
    c
    $ cd c
    $ up
    $ ls
    c

Here's an animation also showing the completion functionality
[![demo](https://asciinema.org/a/xm0kzVDtJL86zicUiHBP813C5.png)](https://asciinema.org/a/xm0kzVDtJL86zicUiHBP813C5?autoplay=1)

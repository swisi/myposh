# myposh
This is my Repertory for my personal "Oh my posh" settings

https://ohmyposh.dev

## Installation

### Windows

Install
``` cmd 
winget install JanDeDobbeleer.OhMyPosh
```

Update
``` cmd 
winget upgrade oh-my-posh
```

### Nerd Fonts

This command needs to be executed as admin. The fonts are installed system wide.
oh-my-posh font install

#### Windows Terminal

Once you have installed a Nerd Font, you will need to configure the Windows Terminal to use it. This can be easily done by modifying the Windows Terminal settings (default shortcut: ```CTRL + SHIFT + ,```). 



### Linux

## Setup Terminal

### Windows

Get shell
```cmd
oh-my-posh get shell
```
Add Profile to powershell

Open your Profile-File with ``` notepad $PROFILE ``` and then add ```oh-my-posh init pwsh | Invoke-Expression``` to it. Then you simply reload the Profile with ``` . $PROFILE ```

Initialize your Profile
``` cmd
oh-my-posh init pwsh --config https://raw.githubusercontent.com/swisi/myposh/main/swisi.omp.json | Invoke-Expression
. $PROFILE
```




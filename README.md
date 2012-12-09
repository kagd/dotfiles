# Initial setup of your mac

### Chrome

[https://www.google.com/intl/en/chrome/browser/](https://www.google.com/intl/en/chrome/browser/)

### Sublime Text 2

[http://www.sublimetext.com/2](http://www.sublimetext.com/2)

### SSH Keys

`ssh-keygen -t rsa -C "your_email@youremail.com"`

Copy key to clipboard
`pbcopy < ~/.ssh/id_rsa.pub`

Add key to Github
`https://github.com/settings/ssh`

### Terminal
```
git clone https://github.com/kagd/dotfiles
cd dotfiles
source bootstrap.sh
```

### Xcode Commandline Tools

[https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)

### Homebrew

`ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"` - [website](http://mxcl.github.com/homebrew/)
`brew doctor`

### Rails Installer

[http://railsinstaller.org/#osx](http://railsinstaller.org/#osx)

### Heroku Toolbelt

[https://toolbelt.heroku.com/](https://toolbelt.heroku.com/)

### Heroku Multiple Accounts

`heroku plugins:install git://github.com/ddollar/heroku-accounts.git`

`heroku accounts:add personal --auto`

`heroku accounts:set personal`
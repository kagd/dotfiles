# Initial setup of your mac

### Chrome

[https://www.google.com/intl/en/chrome/browser/](https://www.google.com/intl/en/chrome/browser/)

### Sublime Text 2

[http://www.sublimetext.com/2](http://www.sublimetext.com/2)

#### Package Control

Installation is through the Sublime Text 2 console. This is accessed via the ctrl+` shortcut. Once open, paste the following command into the console:

```
import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'
```

##### Packages to install

`alignment`, `jsFormat`, `SublimeLinter`, `JsMinifier`, `BracketHighlighter`, `git`, `coffeescript`, `ERB Insert and Toggle Commands`

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

### Homebrew - [website](http://mxcl.github.com/homebrew/)

`ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"`

Then run:

`brew doctor`

### Rails Installer

[http://railsinstaller.org/#osx](http://railsinstaller.org/#osx)

### Heroku Toolbelt

[https://toolbelt.heroku.com/](https://toolbelt.heroku.com/)

### Heroku Multiple Accounts

`heroku plugins:install git://github.com/ddollar/heroku-accounts.git`

`heroku accounts:add personal --auto`

`heroku accounts:set personal`

### MongoDB

`brew install mongodb`

To launch mongo on startup:

`ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents`

### Redis

`brew install redis`

To launch on startup:

`ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents`

### Imagemagick

`brew install imagemagick`

### Node.js

[http://nodejs.org/](http://nodejs.org/)
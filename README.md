# Initial setup of your mac

### Chrome

[https://www.google.com/intl/en/chrome/browser/](https://www.google.com/intl/en/chrome/browser/)

### Atom

[https://atom.io/](https://atom.io/)

##### Atom Packages/Themes
- seti-ui
- monokai (theme)
- ruby-slim
- atom-beautify

##### Atom Snippets
Open settings then open config folder: [Snippets here](https://github.com/kagd/dotfiles/blob/master/init/snippets.cson)

### SSH Keys

`ssh-keygen -t rsa -C "your_email@youremail.com"`

Copy key to clipboard
`pbcopy < ~/.ssh/id_rsa.pub`

Add key to Github
`https://github.com/settings/ssh`

### RVM

[http://rvm.io/](http://rvm.io/)

### Terminal

```
git clone https://github.com/kagd/dotfiles
cd dotfiles
source bootstrap.sh
```

### Xcode Commandline Tools

Not sure if these are needed anymore

[https://developer.apple.com/downloads/index.action](https://developer.apple.com/downloads/index.action)

### Postgres App

[http://postgresapp.com/](http://postgresapp.com/)

##### PG Gem installation using the Postgres App
When you get to the point of installing the pg gem for an app, use this line:

`gem install pg -v '0.18.2' -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.4/bin/pg_config`

This line will have to be updated to the installed version of pg and the location of the Postgres App.

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

### MongoHub

[http://mongohub.todayclose.com/download](http://mongohub.todayclose.com/download)

### Redis

`brew install redis`

To launch on startup:

`ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents`

### Imagemagick

`brew install imagemagick`

### Node.js

[http://nodejs.org/](http://nodejs.org/)

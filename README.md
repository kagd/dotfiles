# Initial setup of your mac

### Chrome

[https://www.google.com/intl/en/chrome/browser/](https://www.google.com/intl/en/chrome/browser/)

### VS Code

[https://code.visualstudio.com/](https://code.visualstudio.com/)

##### Atom Packages/Themes
- Align
- Beautify
- EditorConfig for VSCode
- ESlint
- grant-monokai
- Prettify JSON
- Seti-theme
- theme-dark-monokai
- TSLint

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

### git
Follow the instructions here for git autocomplete
[https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks](https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks)

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


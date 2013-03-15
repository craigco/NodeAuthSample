#NodeAuthSample

A sample nodejs app that authenticates with facebook and stores user information in MongoDB

## Install MongoDB

### Install a package manager 

#### Mac

**Homebrew**  
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"  

sudo brew install mongodb

#### Windows

**Chocolatey**

@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

cinst mongodb



## Create package.json

### Dependencies

- express
- ejs
- mongoose

## Setup Views

- Create folder
- account.ejs
- index.ejs

## Configure express

- app.set 'view engine', 'ejs'
- app.use express.bodyParser()
- app.use express.cookieParser()
- app.use express.cookieSession secret: 'secret'

## Configure routes


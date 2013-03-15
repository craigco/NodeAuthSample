#NodeAuthSample

A sample nodejs app that authenticates with facebook and stores user information in MongoDB

## Install MongoDB

You can download it directly from the website here http://www.mongodb.org/downloads or see below for installing from a package manager.

### Via package manager 

#### Mac

Assuming you already have XCode installed

**Homebrew**  
```bash
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

sudo brew install mongodb
```  

#### Windows

**Chocolatey**
```cmd
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

cinst mongodb
```  



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


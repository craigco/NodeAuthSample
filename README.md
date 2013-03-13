#NodeAuthSample

A sample nodejs app that authenticates with facebook and stores user information in MongoDB

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


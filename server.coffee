express 				= require 'express'
passport 				= require 'passport'
passportConfiguration 	= require './passport-configuration'
routes 					= require './routes'
db 						= require './db'

app = express()

# configure express optins

app.set 'view engine', 'ejs'
#app.use express.logger()
app.use express.bodyParser()
app.use express.cookieParser()
app.use express.cookieSession secret: 'secret'
app.use passport.initialize()
app.use passport.session()
app.use '/static', express.static './static'
app.use app.router



# Configure the routes

routes.configure(app)



# Configure passport

passportConfiguration.configure()



# Connect to the database

db.connect()



# Start our server

app.listen 5010, () ->
	console.log "Listening on port 5010"
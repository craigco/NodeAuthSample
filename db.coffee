mongoose 	= require 'mongoose'

module.exports =

	connect: () ->

		mongoUrl = "mongodb://localhost/produce"

		db = mongoose.connection

		db.on 'error', (err) ->
			console.log err.toString()

		db.on 'open', () ->
			console.log "Connection opened to mongodb at #{mongoUrl}"

		mongoose.connect(mongoUrl)

	


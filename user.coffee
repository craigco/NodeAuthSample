mongoose 	= require 'mongoose'

schema = new mongoose.Schema
	
	email:		String
	firstName: 	String
	lastName: 	String
	facebook:
		id:			Number
		username: 	String


module.exports = mongoose.model 'User', schema

passport 			= require 'passport'
facebookStrategy 	= require('passport-facebook').Strategy
User 				= require './user'

module.exports =

	configure: () ->

		passport.serializeUser (user, done) ->
			
			done null, user.email

		passport.deserializeUser (obj, done) ->

			User.findOne { email: obj}, (err, user) ->
				done null, user

		fbOptions = 
			clientID: "306787406114856"
			clientSecret: "52812d4f9f81eb946031ed00ec3de2c0"
			callbackURL: "http://localhost:5010/auth/facebook/callback"
			scope: ["email"]

		strategy = new facebookStrategy fbOptions, (accessToken, refreshToken, profile, done) ->

			# Lets try and find the user in the databse

			User.findOne { email: profile.emails[0].value }, (err, user) ->

				if not user?

					# We don't have a record of them so let's create one

					user = new User
						email: 		profile.emails[0].value
						firstName: 	profile.name.givenName
						lastName: 	profile.name.familyName
						facebook:
							id: 		profile.id
							username: 	profile.username
					user.save()


				
				done null, user


		passport.use strategy


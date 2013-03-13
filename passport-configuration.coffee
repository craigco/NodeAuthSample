passport 			= require 'passport'
facebookStrategy 	= require('passport-facebook').Strategy

module.exports =

	configure: () ->

		passport.serializeUser (user, done) ->
			console.log "Serializing User"
			done null, user.id

		passport.deserializeUser (obj, done) ->
			console.log "Deserializing user"
			console.log obj
			done null, obj

		fbOptions = 
			clientID: "306787406114856"
			clientSecret: "52812d4f9f81eb946031ed00ec3de2c0"
			callbackURL: "http://localhost:5010/auth/facebook/callback"
			scope: ["email"]

		strategy = new facebookStrategy fbOptions, (accessToken, refreshToken, profile, done) ->
			done null, profile

		passport.use strategy
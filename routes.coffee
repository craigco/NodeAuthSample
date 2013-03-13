passport = require 'passport'

ensureLoggedIn = (req, res, next) ->

	if req.user?

		next()

	else
		res.redirect '/'

module.exports =

	configure: (app) ->

		###
		#
		# This method is what facebook sends our authenticated user information to
		#
		###
		app.get '/auth/facebook/callback', passport.authenticate('facebook', { failureRedirect: '/auth/facebook/failure' }), (req, res) ->

			# They've authenticated so let's redirect them to their account page

			res.redirect '/account' 


		###
		#
		# If facebook auth fails then we are redirected here
		#
		###
		app.get '/auth/facebook/failure', (req, res) ->

			res.send "Facebook failed!!!"


		###
		#
		# This method is what is hooked up to our login button. It redirects us to the faecebook login dialog.
		#
		###
		app.get '/auth/facebook', passport.authenticate 'facebook'


		###
		#
		# If we're logged in then we'll get redirected here
		#
		###
		app.get '/account', ensureLoggedIn, (req, res) ->


			res.render 'account', user: req.user


		###
		#
		# Our welcome page with our login button
		#
		###
		app.get '/', (req, res) ->

			res.render 'index'



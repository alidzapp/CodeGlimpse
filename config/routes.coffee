Router.configure
	loadingTemplate:  'loading'
	notFoundTemplate: 'notfound'
	layoutTemplate:   'layout'

Router.route '/', ->
	@render 'home'

Router.route '/@:username', ->
	# Fetch user by username in url
	@render 'profile', {
		data: ->
			Meteor.users.findOne({})
	}

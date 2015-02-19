Router.configure
	loadingTemplate:  'loading'
	notFoundTemplate: 'notfound'
	layoutTemplate:   'layout'

Router.route '/', ->
	@render 'home'

Router.route '/@:username', ->
	@render 'profile', {
		data: ->
			Meteor.users.findOne({})
			# user = Meteor.users.find username: @params.username
	}

if Meteor.isClient
	Router.configure
		loadingTemplate:  'loading'
		notFoundTemplate: 'notfound'
		layoutTemplate:   'layout'

	Router.route '/', ->
		@render 'home'

	Router.route '/@:username', ->
		@render 'profile',
			data: ->
				Meteor.users.find('services.github.username': @params.username).fetch()[0]

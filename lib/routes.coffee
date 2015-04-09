if Meteor.isClient
	Router.configure
		loadingTemplate:  'loading'
		notFoundTemplate: 'notfound'
		layoutTemplate:   'layout'

	Router.route '/',
		action: ->
			@render 'home'
		name: 'home'

	Router.route '/:username',
		waitOn: ->
			Meteor.subscribe 'allUsers'
		action: ->
			@render 'profile'
		name: 'profile'

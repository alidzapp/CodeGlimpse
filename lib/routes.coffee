if Meteor.isClient
	Router.configure
		loadingTemplate:  'loading'
		notFoundTemplate: 'notfound'
		layoutTemplate:   'layout'

	Router.route '/', ->
		@render 'home'

	Router.route '/@:username',
		waitOn: ->
			Meteor.subscribe 'allUsers'
		action: ->
			@render 'profile', data: ->
				Meteor.users.findOne({
					username: @params.username
				})

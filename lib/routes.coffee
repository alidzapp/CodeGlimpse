if Meteor.isClient
	Router.configure
		loadingTemplate:  'loading'
		notFoundTemplate: 'notfound'
		layoutTemplate:   'layout'

	Router.route '/', ->
		@render 'home'

	Router.route '/@:username', ->
		Session.set 'username', @params.username
		@render 'profile'

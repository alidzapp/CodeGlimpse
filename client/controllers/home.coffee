if Meteor.isClient
	Template.login.helpers
		login: ->
			Session.get 'login'

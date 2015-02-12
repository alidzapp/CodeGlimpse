if Meteor.isClient
	Template.layout.helpers
		currentUser: () ->
			Meteor.user()

	Template.layout.events
		'click .login': (event, template) ->
			if not Meteor.user()?
				Meteor.loginWithGithub()

		'click .logout': (event, template) ->
			Meteor.logout()

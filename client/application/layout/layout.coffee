Template.layout.helpers
	template: ->
		Router.current().route.getName()

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub()

	'click .logout': (event, template) ->
		Meteor.logout()

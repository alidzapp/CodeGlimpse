Template.layout.helpers
	template: ->
		Router.current().route.getName()
	menuItems: ->
		[
			'home': '/'
			'profile': '/profile'
			'logout': '/logout'
		]

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub()

	'click .logout': (event, template) ->
		Meteor.logout()

Template.nav.events
	'click .menu-toggler': (event, template) ->
		$('.applicationContent').toggleClass('menu-open')

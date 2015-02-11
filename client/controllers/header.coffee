if Meteor.isClient
	Template.header.rendered = ->
		$(window).scroll (event) ->
			if $(window).scrollTop() > 15
				$('header').removeClass 'transparent'
			else
				$('header').addClass 'transparent'

	Template.header.helpers
		currentUser: () ->
			Meteor.user()

	Template.header.events
		'click .login': (event, template) ->
			Meteor.loginWithGithub()

		'click .logout': (event, template) ->
			Meteor.logout()

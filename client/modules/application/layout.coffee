Template.layout.helpers
	currentUser: () ->
		Meteor.user()

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub()

	'click .logout': (event, template) ->
		Meteor.logout()

Template.layout.rendered = () ->
	$(window).scroll (event) ->
		header = $('header')

		if $(window).scrollTop() > header.attr 'data-sticky'
			header.removeClass 'transparent'
		else
			header.addClass 'transparent'
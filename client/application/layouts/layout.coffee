Template.layout.helpers
	template: ->
		Router.current().route.getName()

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub()

	'click .logout': (event, template) ->
		Meteor.logout()

Template.layout.rendered = ->
	$window = $(window)
	$nav    = $('nav')

	$window.scroll ->
		if $window.scrollTop() <= 0
			$nav.addClass('fixed')
		else
			$nav.removeClass('fixed')

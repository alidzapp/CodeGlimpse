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

	'click .applicationContent.menu-open': (event, template) ->
		if not $(event.target).hasClass 'menu-toggler'
			$('.applicationContent').removeClass('menu-open')

Template.nav.events
	'click .menu-toggler': (event, template) ->
		$('.applicationContent').toggleClass('menu-open')

Template.layout.rendered = ->
	$window = $(window)
	$nav    = $('nav')

	$window.scroll ->
		if $window.scrollTop() <= 0
			$nav.addClass('fixed')
		else
			$nav.removeClass('fixed')

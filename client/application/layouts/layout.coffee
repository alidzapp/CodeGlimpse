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
			event.preventDefault()
			menu = new Menu()
			menu.close()

	'click .applicationMenu a': (event, template) ->
		menu = new Menu()
		menu.close()

Template.nav.events
	'click .menu-toggler': (event, template) ->
		menu = new Menu()
		menu.toggle()

Template.layout.rendered = ->
	$window = $(window)
	$nav    = $('nav')

	$window.scroll ->
		if $window.scrollTop() <= 0
			$nav.addClass('fixed')
		else
			$nav.removeClass('fixed')

Menu = () ->
	$applicationContent = $('.applicationContent')
	className           = 'menu-open'

	close: ->
		$applicationContent.removeClass(className)

	open: ->
		$applicationContent.addClass(className)

	toggle: ->
		$applicationContent.toggleClass(className)

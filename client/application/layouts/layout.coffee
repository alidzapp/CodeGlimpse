Template.layout.helpers
	template: ->
		Router.current().route.getName()
	menuItems: ->
		[
			'home': '/'
			'profile': '/profile'
			'logout': '/logout'
		]
	menuVisible: ->
		Session.get('menuVisible')

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub (error) ->
			if error
				console.warn('Could not login: ' + error)

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

Menu = () ->
	$applicationContent = $('.applicationContent')
	className           = 'menu-open'

	close: ->
		$applicationContent.removeClass(className)

	open: ->
		$applicationContent.addClass(className)

	toggle: ->
		$applicationContent.toggleClass(className)

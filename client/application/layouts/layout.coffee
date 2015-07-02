Template.layout.helpers
	template: ->
		Router.current().route.getName()

	menuVisible: ->
		'menu-visible' if Session.get('menuVisible')

	navigationOpen: ->
		'nav-invisible' if not Session.get('navigationVisible')

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub (error) ->
			if error
				console.warn('Could not login: ' + error)

	'click .logout': (event, template) ->
		Meteor.logout()

	'click .applicationContent.menu-visible': (event, template) ->
		if not $(event.target).hasClass 'menu-toggler'
			event.preventDefault()
			Session.set('menuVisible', false)

	'click .applicationMenu a': (event, template) ->
		Session.set('menuVisible', false)

	'click .menu-toggler': (event, template) ->
		Session.set('menuVisible', not Session.get('menuVisible'))

Template.layout.helpers
	template: ->
		FlowRouter.getRouteName()

	menuVisible: ->
		'menu-visible' if Session.get('menuVisible')

	navigationVisible: ->
		'nav-invisible' if not Session.get('navigationVisible')

Template.layout.events
	'click .login': (event, template) ->
		Meteor.loginWithGithub (error) ->
			if error
				console.warn('Could not login: ' + error)

	'click .logout': (event, template) ->
		Meteor.logout()

	'click .applicationContent.menu-visible': (event, template) ->
		event.preventDefault()

		if not $(event.target).hasClass 'menu-toggler'
			Session.set('menuVisible', false)
			document.querySelector('body').classList.remove('no-scroll')

	'click .applicationMenu a': (event, template) ->
		Session.set('menuVisible', false)

	'click .menu-toggler': (event, template) ->
		Session.set('menuVisible', not Session.get('menuVisible'))

		document.querySelector('body').classList.toggle('no-scroll')

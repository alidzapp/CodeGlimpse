Template.nav.helpers
	navigationOpen: ->
		'invisible' if not Session.get('navigationVisible')

Template.nav.events
	'click .menu-toggler': (event, template) ->
		Session.set('menuVisible', not Session.get('menuVisible'))

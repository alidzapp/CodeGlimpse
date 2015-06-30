Template.nav.helpers
	navigationOpen: ->
		'invisible' if not Session.get('navigationOpen')

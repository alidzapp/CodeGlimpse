Template.nav.helpers
	navigationVisible: ->
		'invisible' if not Session.get('navigationVisible')

if Meteor.isClient
	Template.profile.helpers
		active: () ->
			'active' if Session.get('active') is true

	Template.profile.events
		'click a': (event, template) ->
			button = $(event.target)
			active = button.hasClass 'active'
			Session.set('active', not active)

			if active
				button.html 'follow'
			else
				button.html 'following'

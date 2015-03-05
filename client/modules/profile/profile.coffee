Template.profile.helpers
	active: ->
		'active' if Session.get('active') is true
	user: ->
		Meteor.users.find('services.github.username': Session.get('username')).fetch()[0]

Template.profile.events
	'click .hero a': (event, template) ->
		button = $(event.target)
		active = button.hasClass 'active'
		Session.set('active', not active)

		if active
			button.html 'follow'
		else
			button.html 'following'

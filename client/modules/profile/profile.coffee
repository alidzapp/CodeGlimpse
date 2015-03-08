Template.profile.helpers
	active: ->
		'active' if Session.get('active') is true
	user: ->
		user = Meteor.users.find({ 'services.github.username': Session.get('username') },
		    { fields: { 'image': 1 } }
		)

		console.log user

Template.profile.events
	'click .hero a': (event, template) ->
		button = $(event.target)
		active = button.hasClass 'active'
		Session.set('active', not active)

		if active
			button.html 'follow'
		else
			button.html 'following'

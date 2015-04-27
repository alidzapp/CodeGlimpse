Template.profile.helpers
	user: ->
		Meteor.users.findOne({
			username: Router.current().params.username
		})

Template.profile.events
	'click .follow': (event, template) ->
		if Session.get('user') isnt Meteor.user
			console.log 'trying to follow'

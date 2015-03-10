Template.profile.helpers
	user: ->
		Meteor.users.findOne({username: Session.get('username')})

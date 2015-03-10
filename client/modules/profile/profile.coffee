Template.profile.helpers
	user: ->
		user = Meteor.users.find({}).fetch()[0]

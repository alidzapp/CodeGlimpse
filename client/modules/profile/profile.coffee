Template.profile.helpers
	user: ->
		Meteor.users.findOne({
			username: Router.current().params.username
		})

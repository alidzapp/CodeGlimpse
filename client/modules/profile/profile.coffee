Template.profile.helpers
	user: ->
		currentUser()
	isCurrentUser: ->
		isCurrentUser()

# Private functions --------------------------------
currentUser = ->
	Meteor.users.findOne({
		username: Router.current().params.username
	})

isCurrentUser = ->
	currentUser()._id is Meteor.user()._id

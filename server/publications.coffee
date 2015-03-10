Meteor.publish 'allUsers', ->
	Meteor.users.find({}, {username: 1, email: 1, name: 1, image: 1})

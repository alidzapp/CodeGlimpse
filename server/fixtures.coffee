Meteor.startup ->
	if Meteor.users.find().count() is 0
		users = [{
			name:     'John Doe',
			email:    '',
			avatar:   '/images/avatar_john.jpg',
			username: 'johndoe'
		}, {
			name:     'Jane Doe',
			email:    '',
			avatar:   '/images/avatar_jane.jpg',
			username: 'janedoe'
		}]

		_.each users, (user) ->
			Meteor.users.insert user

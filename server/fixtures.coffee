Meteor.startup ->
	if Meteor.users.find().count() is 0
		users = [{
			name:     'Stephan de Vries',
			email:    '',
			avatar:   'https://avatars0.githubusercontent.com/u/4006802?v=3&s=460',
			username: 'stephan281094'
		}, {
			name:     'Roy',
			email:    '',
			avatar:   'https://avatars0.githubusercontent.com/u/6282765?v=3&s=460',
			username: 'AwesomeRoy'
		}]

		_.each users, (user) ->
			Meteor.users.insert user

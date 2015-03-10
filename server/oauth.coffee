Meteor.startup ->
	Accounts.loginServiceConfiguration.upsert({ service: 'github' }, {
		$set: {
			clientId: ApiKeys.github.clientId,
			secret: ApiKeys.github.secret
		}
	})

Accounts.onCreateUser (options, user) ->
	if user.services.github
		user.name     = user.services.github.name
		user.username = user.services.github.username
		user.image    = 'https://avatars0.githubusercontent.com/u/' + user.services.github.id + '?v=3&s=460'

	user

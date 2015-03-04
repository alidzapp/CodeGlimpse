Meteor.startup ->
	Accounts.loginServiceConfiguration.upsert({ service: 'github' }, {
		$set: {
			clientId: ApiKeys.github.clientId,
			secret: ApiKeys.github.secret
		}
	})

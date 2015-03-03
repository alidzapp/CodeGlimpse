Meteor.startup () ->
	Accounts.loginServiceConfiguration.upsert({ service: 'github' }, {
		$set: {
			clientId: '307a3cb798e4befcb219',
			secret: '4e77a03e75cbf787db1fa10e46748c23797251aa'
		}
	})

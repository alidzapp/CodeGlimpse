if Meteor.isServer
	Meteor.startup () ->
		Accounts.loginServiceConfiguration.upsert({ service: 'github' }, {
			$set: {
				clientId: '307a3cb798e4befcb219',
				secret: '4e77a03e75cbf787db1fa10e46748c23797251aa'
			}
		})

# CodeGlimpse Publish configuration:
# 	clientId: 'fea3e7362b6660a7e80f',
# 	secret: '5c75ea284e71fcd79990d1c9834e71685b790324'

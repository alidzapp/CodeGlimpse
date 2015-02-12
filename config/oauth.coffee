Meteor.startup () ->
	# Remove it in case it already exists
	Accounts.loginServiceConfiguration.remove({
		service: 'github'
	})

	# Make sure you are running under 'localhost:3000'.
	# Authorization callback URL: http://localhost:3000/_oauth/github?close
	Accounts.loginServiceConfiguration.insert({
		service: 'github',
		clientId: '307a3cb798e4befcb219',
		secret: '4e77a03e75cbf787db1fa10e46748c23797251aa'
	})

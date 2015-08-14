Accounts.onCreateUser (options, user) ->
	user.name     = options.profile.name
	user.email    = user.services.github.email
	user.avatar   = '//avatars0.githubusercontent.com/u/' + user.services.github.id + '?v=3&s=460'
	user.username = user.services.github.username

	user

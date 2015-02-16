Router.configure
	loadingTemplate:  'loading'
	notFoundTemplate: 'notfound'
	layoutTemplate:   'layout'

Router.route '/', ->
	@render 'home'

Router.route '/@:username', ->
	# user = Lists.findOne({})
	if false
		@render 'profile'
	else
		@next()

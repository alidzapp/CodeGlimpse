Router.configure
	loadingTemplate:  'loading'
	notFoundTemplate: 'notfound'
	layoutTemplate:   'layout'

Router.route '/', ->
	@render 'home'

Router.route '/@:username', ->
	@render 'profile'

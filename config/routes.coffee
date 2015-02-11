Router.configure
	loadingTemplate: 'loading'
	notFoundTemplate: 'notfound'
	layoutTemplate: 'layout'

Router.route '/', ->
	@render 'home'
	Session.set('login', false)

Router.route '/login', ->
	@render 'home'

Router.route '/@:username', ->
	@render 'profile'

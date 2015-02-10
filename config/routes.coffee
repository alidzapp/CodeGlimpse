Router.configure
	loadingTemplate: 'loading'
	notFoundTemplate: 'notfound'
	layoutTemplate: 'layout'

Router.route '/', ->
	@render 'home'

Router.route '/login', ->
	@render 'home'

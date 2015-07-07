# TODO: Use subscriptions

FlowRouter.route '/',
	action: ->
		FlowLayout.render('layout', {content: 'home'})
	name: 'home'

FlowRouter.route '/logout',
	action: ->
		Meteor.logout()
		FlowRouter.go('/')

FlowRouter.route '/:username',
	action: ->
		FlowLayout.render('layout', {content: 'profile'})
	name: 'profile'

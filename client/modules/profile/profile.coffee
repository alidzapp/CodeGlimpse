Template.profile.helpers
	user: ->
		currentUser()
	isCurrentUser: ->
		isCurrentUser()
	isFollowing: ->
		getFollower()

Template.profile.rendered = ->
	Zoomerang.config({
		onBeforeOpen: ->
			Session.set('navigationVisible', false)
		onBeforeClose: ->
			Session.set('navigationVisible', true)
	})

	Zoomerang.listen('#profile header .avatar img')

Template.profile.events
	'click .follow': (event, template) ->
		if Meteor.user() and not isCurrentUser()
			follower = getFollower()

			if follower
				Followers.remove({
					_id: follower._id
				})
			else
				Followers.insert({
					userId: Meteor.user()._id,
					follower: currentUser()._id
				})
		else
			# Replace with notification system
			console.warn("There's no signed in user or user tries to follow himself")

	'click .edit-profile': (event, template) ->
		# Replace with notification system
		console.warn("This functionality is not implemented yet")

# Private functions --------------------------------
currentUser = ->
	Meteor.users.findOne({
		username: FlowRouter.getParam('username')
	})

isCurrentUser = ->
	if currentUser()
		currentUser()._id is Meteor.userId()

getFollower = ->
	if Meteor.user()
		Followers.findOne({
			userId: Meteor.user()._id,
			follower: currentUser()._id
		})
	else
		false

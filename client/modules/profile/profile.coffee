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
		if not isCurrentUser()
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

# Private functions --------------------------------
currentUser = ->
	Meteor.users.findOne({
		username: Router.current().params.username
	})

isCurrentUser = ->
	currentUser()._id is Meteor.user()._id

getFollower = ->
	Followers.findOne({
		userId: Meteor.user()._id,
		follower: currentUser()._id
	})

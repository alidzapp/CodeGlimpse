Template.dashboard.helpers
	followers: ->
		followers = Followers.find({
			userId: Meteor.user()._id
		}).map (f) ->
			f.follower

		Meteor.users.find({
			_id: {$in: followers}
		}).fetch()
	users: ->
		Meteor.users.find({})

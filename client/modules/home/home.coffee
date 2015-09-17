Template.dashboard.helpers
  followers: ->
    followers = Followers.find({
      userId: Meteor.user()._id
    }).map (f) ->
      f.follower

    Meteor.users.find({
      _id: {$in: followers}
    }).fetch()
  posts: ->
    posts = Posts.find({}, {sort: {createdOn: -1}, limit: 5}).fetch()

    _.each posts, (post) ->
      post.user = Meteor.users.findOne({ _id: post.user })

    posts

Template.home.helpers
  users: ->
    Meteor.users.find({})

Template.dashboard.rendered = () ->
  $('input#status').focus()

Template.dashboard.events
  'keyup input[type="text"]': (event, template) ->
    if (event.which is 13)
      input = template.find('#status')

      if (input.value.length > 0)
        now = new Date()
        Posts.insert({
          user: Meteor.userId(),
          message: input.value,
          createdOn: now,
          editedOn: now
        })

        input.value = ''

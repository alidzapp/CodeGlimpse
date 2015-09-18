Template.home_default.helpers
  users: ->
    Meteor.users.find({})

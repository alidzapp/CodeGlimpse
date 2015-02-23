if Meteor.isServer
	@Posts = new Meteor.Collection 'posts'

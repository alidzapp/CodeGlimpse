MochaWeb?.testOnly ->
	describe 'logging in with Github', ->
		it 'should return a Meteor user object', ->
			$('.login').click()
			chai.assert.isNotNull(Meteor.currentUser)

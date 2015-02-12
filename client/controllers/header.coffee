if Meteor.isClient
	Template.header.rendered = ->
		$(window).scroll (event) ->
			if $(window).scrollTop() > 15
				$('header').removeClass 'transparent'
			else
				$('header').addClass 'transparent'

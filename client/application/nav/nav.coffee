Template.nav.rendered = ->
	$(window).scroll (event) ->
		if $(window).scrollTop() > 15
			$('nav').removeClass 'transparent'
		else
			$('nav').addClass 'transparent'

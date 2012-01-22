jQuery ($) ->
	$(".hide_me").hide()
	$("a#edit_holder").click (event) ->
		event.preventDefault()
		$elem = $("div#holder_form")
		$("##{$elem.data('id')}").hide();
		$elem.fadeIn()

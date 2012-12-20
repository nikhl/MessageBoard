jQuery ($) -> 
  $("div.title").click ->
    post_id = $(this).data('title_id')
    message = $("div").find("[data-message_id='" + post_id + "']")
    if message.is(":visible")
      message.slideUp()
    else
      message.slideDown()
      
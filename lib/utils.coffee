@Utils =
  prettyDate: (date)->
    if date
      if Config.dateFormat
        moment(date).format(Config.dateFormat)
      else
        moment(date).format('D/M/YYYY')

  timeSince: (date)->
    if date
      seconds = Math.floor((new Date() - date) / 1000)
      interval = Math.floor(seconds / 31536000)
      return interval + "years ago"  if interval > 1
      interval = Math.floor(seconds / 2592000)
      return interval + " months ago"  if interval > 1
      interval = Math.floor(seconds / 86400)
      return interval + " days ago"  if interval > 1
      interval = Math.floor(seconds / 3600)
      return interval + " hours ago"  if interval > 1
      interval = Math.floor(seconds / 60)
      return interval + " minutes"  if interval > 1
      "just now"

  isMobile: ->
    /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test navigator.userAgent

  loginRequired: ->
    Router.go '/sign-in'

	scroll_to_top: ->
    $("html,body").animate({
    	scrollTop : $('body').offset().top
    }, 500);

	scroll_to_elem: ->
		$("html,body").animate({
			scrollTop : $( selector ).offset().top
		}, 500);


	init_headroom: ->
    # construct an instance of Headroom, passing the element
    headroom  = new Headroom( document.getElementById("header") );
    # initialise
    headroom.init();
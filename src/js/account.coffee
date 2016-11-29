if location.pathname.indexOf('account') >= 0
  $(document).ready ->
    isSafari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent)

    displayCopied = ->
      setTimeout (->
        $('.copied').fadeIn()
        setTimeout (->
          $('.copied').fadeOut()
          return
        ), 1000
        return
      ), 250
      return

    # Copy link to clipboard and fade in message on click

    setupClipboard = ->
      new Clipboard('.ref-link', target: (trigger) ->
        if !isSafari
          displayCopied()
        $('.ref-link')[0]
    )
      return

    setupReferral = (url) ->
      $('.ref-text').html url
      url = encodeURIComponent(url)
      $('#fbLink').attr 'href', 'https://www.facebook.com/sharer/sharer.php?u=' + url
      message = encodeURIComponent('Excited for the @JoinLudela launch! The world\'s first smartphone-controlled, real-flame candle is coming!')
      $('#twLink').attr 'href', 'https://twitter.com/intent/tweet?text=' + message + '&amp;url=' + url
      setupClipboard()
      return

    if !window.client.client.customerToken
      window.location.replace 'signup'

# ---
# generated by js2coffee 2.2.0

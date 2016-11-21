{requestTick} = require './utils'

$(document).ready ->
  $progress = $('.progress')
  if !$progress[0]
    return

  $style = $('<style></style>')
  $progress.append $style

  progressFn = ->
    offset = $progress.offset()
    if offset.top > $(window).height() + $(window).scrollTop()
      return

    percent = $progress.attr('data-percent')

    if percent == ''
      percent = '0%'

    percentNumber = parseFloat percent
    percentString = percent
    if percentNumber < 10
      percent = "10"

    if percent.indexOf('%') < 0
      percent += '%'

    $style.html("""
      .progress .bar:before {
        content: '#{percentString} RESERVED';
        width: #{percent};
      }

      .progress .bar:after {
        left: #{percent};
      }""")

    $(window).off 'scroll touchmove mousewheel', fn

  fn = ->
    requestTick progressFn
  $(window).on 'scroll touchmove mousewheel', fn

  fn()

  # deltaPercent = parseFloat(percent) / 100

  # i = 0

  # counterFn = ->
  #   if i <= 100
  #     sumPercent = (parseInt (deltaPercent * i) * 10, 10) / 10
  #     i++

  #     $style.html("""
  #       <style>
  #         .progress .bar:before {
  #           content: '#{sumPercent}% RESERVED';
  #           width: #{percent};
  #         }

  #         .progress .bar:after {
  #           left: #{percent};
  #         }
  #       </style>""")
  #     requestAnimationFrame counterFn

  # requestAnimationFrame counterFn


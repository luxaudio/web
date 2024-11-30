url = 'https://lux.audio'

description = """
  Huge sound, noise isolation, in-ear mic, charging case, intuitive controls and zero wires.
  """

email =
  subject: "You need to get Lux"
  body: """
    #{description}

    I'm Lux. Are you?"""

twitter =
  username: 'luxdefi'
  hashtags: 'lux,luxaudio,luxcoin,luxnetwork'
  text:     "Can't wait to get my LX1.\n\nGet yours at: https://lux.audio\n\n"

pinterest =
  text: "Lux Earphones – #{description}"

module.exports =
  site:
    title:     'Lux Audio'
    name:      'lux.audio'
    url:       url
    copyright: '© Lux Industries Inc 2024'

  shipDate: 'January 2025'
  shipping:
    prelaunch2016december:
      date: 'January 2017'
    2:
      date: 'April 2017'
    3:
      date: 'May 2017'
    4:
      date: 'January 2025'

  meta:
    description: description

    facebook:
      appid:       '1648878842071733'
      description: description
      image:       'https://lux.audio/img/fbshare.jpg'
      title:       'Get Lux'

    twitter:
      description: description
      image:       'https://lux.audio/img/twittershare.jpg'
      title:       'Get Lux'

  social:
    email:
      shareLink: "mailto:?subject=#{encodeURIComponent email.subject}&body=#{encodeURIComponent email.body}"
    twitter:
      username:  "@#{twitter.username}"
      shareLink: "https://twitter.com/intent/tweet?url=#{encodeURIComponent url}&text=#{encodeURIComponent twitter.text}&hashtags=#{twitter.hashtags}&via=#{twitter.username}&original_referer=#{encodeURIComponent url}"
    facebook:
      username:  'luxdefi'
      shareLink: 'https://www.facebook.com/sharer/sharer.php?u=' + encodeURIComponent url
    googlePlus:
      shareLink: 'https://plus.google.com/share?url=' + encodeURIComponent url
    pinterest:
      shareLink: 'http://pinterest.com/pin/create/button/?url=' + encodeURIComponent(url) + '&media=' + encodeURIComponent(url + '/img/fbshare.jpg') + '&description=' + encodeURIComponent pinterest.text

  legal:
    email:   'legal@lux.audio'
    name:    'Lux Industries Inc'
    address: '1824 S. Fairfax Ave, Los Angeles, CA 90019'
    state:   'California'

  contact:
    email: 'ai@lux.audio'
    phone: '(913) 777-4443'

  press:
    name:  'Zach Kelling'
    email: 'press@lux.audio'
    phone: '(913) 777-4443'

  support:
    email: 'support@lux.audio'

  instafeed:
    images: [
      'https://www.instagram.com/p/BQWXKFGDTmd/'
      'https://www.instagram.com/p/BNs0TbFjFdy/'
      'https://www.instagram.com/p/BQMhde7jpIh/'
      'https://www.instagram.com/p/BPiyHbED1-x/'
      'https://www.instagram.com/p/BPNZ-INDDLN/'
      'https://www.instagram.com/p/BPGTX1wD5yg/'
      'https://www.instagram.com/p/BO_PL0Rj-p_/'
      'https://www.instagram.com/p/BO5DxzmjZ7e/'
      'https://www.instagram.com/p/BO2taM8juJL/'
      'https://www.instagram.com/p/BNxQWAej2HJ/'
      'https://www.instagram.com/p/BNuhTdmDG7O/'
      'https://www.instagram.com/p/BOQYjbbjIjr/'
    ]

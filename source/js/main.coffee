$().ready () ->
  if window.ontouchstart is null
    $ 'textarea'
      .off 'touchstart'
      .on 'touchstart', () ->
        $ this
          .focus()
      .on 'mouseup', () ->
        $ this
          .blur()

  Vue.config delimiters: ['_', '_']
  window.app =
    client: null
    settings:
      interval: 300000
      link: 'http://dictionary.cambridge.org/dictionary/english-japanese/'
    strage:    'localStrage'
    cards:     'pending'
    tagname:   'defaul'
    mirror_cards:  null
    se:        new Audio
    key:       new Key
    screen:    new Screen

  app.se.load ["#{prefix}/audio/click.wav"], "click"
  app.se.load ["#{prefix}/audio/blow.wav"],  "blow"
  app.se.load ["#{prefix}/audio/wrong.wav"], "wrong"
  app.se.load ["#{prefix}/audio/right.wav"], "right"
  app.se.load ["#{prefix}/audio/ok.wav"],    "ok"

  new Ready


define (require) ->
  defaultConfig= require('./config')
  class Inquisitor
    constructor: (config)->
      console.log('inquisitor')
      @config= config
      @config = defaultConfig if config?

    config: null
    open:(database) ->
      

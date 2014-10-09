define (require) ->
  _ = require('./bower_components/lodash/dist/lodash')
  class Tagger
    constructor:->
      @tags: []
      @fixedTags={}
    Add:(tag)->
      @tags.push(tag) if typeof tag is 'string' else console.error('Tag is not a string')
      return # As not to pass unintended references
    AddFixed:(tag, value )->
      @fixedTags[tag]= value if typeof tag is 'string' else console.error('Tag is not a string')
      return
    Tags: ->
      _.clone(@tags)
    Fixed:->
      _.clone(@fixedTags)
    CopyFrom:(src)->
      srcTagger= src.Tagger()
      @tags= @tags.concat(srcTagger)
      srcFixedTags= src.Fixed()
      _.merge(@fixedTags, srcFixedTags)
      return


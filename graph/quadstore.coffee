###
  This is an Implementation of the Quadstor interface found in caylel
###
require ['./../bower_components/PouchDB/pouchdb-3.0.6.min.js'] , ->
   class QuadStore
    initialize: (path, options)->
      @writeopts= options
      @dbOpts
      if typeof path != 'string'
        console.error('Path is not a string')
      @db= new PouchDB(path,options)
      @path
      @open
      @size
      @horizon

    newQuadStoe(path, options)



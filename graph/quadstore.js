// Generated by CoffeeScript 1.8.0

/*
  This is an Implementation of the Quadstor interface found in caylel
 */

(function() {
  require(['./../bower_components/PouchDB/pouchdb-3.0.6.min.js'], function() {
    var QuadStore;
    return QuadStore = (function() {
      function QuadStore() {}

      QuadStore.prototype.initialize = function(path, options) {
        this.writeopts = options;
        this.dbOpts;
        if (typeof path !== 'string') {
          console.error('Path is not a string');
        }
        this.db = new PouchDB(path, options);
        this.path;
        this.open;
        this.size;
        return this.horizon;
      };

      newQuadStoe(path, options);

      return QuadStore;

    })();
  });

}).call(this);

//# sourceMappingURL=quadstore.js.map

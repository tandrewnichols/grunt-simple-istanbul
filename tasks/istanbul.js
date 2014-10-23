var simple = require('simple-cli');
var path = require('path');
var istanbulPath = path.resolve(__dirname, '../node_modules/.bin/istanbul');

module.exports = function(grunt) {
  grunt.registerMultiTask('istanbul', 'A grunt wrapper for istanbul', function() {
    simple.spawn(grunt, this, istanbulPath, this.async());
  });
};

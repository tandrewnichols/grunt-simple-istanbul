var cli = require('simple-cli');
var path = require('path');

// Assures we can find the istanbul binary whether it's installed in this modules
// dependencies (ala npm 2) or the dependee's dependencies (ala npm 3).
var binPath = require.resolve('istanbul').replace('istanbul/index.js', '.bin/istanbul');

module.exports = cli({
  task: 'istanbul',
  description: 'A grunt wrapper for istanbul',
  cmd: path.normalize(binPath)
});

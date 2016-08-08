var cli = require('simple-cli');
var path = require('path');
var exec = require('child_process').execSync;
var binPath = exec('npm bin').toString().split('\n')[0];

module.exports = cli({
  task: 'istanbul',
  cmd: path.join(binPath, 'istanbul')
});

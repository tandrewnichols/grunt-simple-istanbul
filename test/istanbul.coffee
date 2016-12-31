path = require 'path'
root = path.resolve __dirname, '..'

describe 'istanbul', ->
  Given -> @cli = sinon.stub()
  Given -> @subject = sandbox '../tasks/istanbul',
    'simple-cli': @cli

  Then -> @cli.calledWith(
    task: 'istanbul'
    description: 'A grunt wrapper for istanbul'
    cmd: "#{root}/node_modules/.bin/istanbul"
  ).should.be.true

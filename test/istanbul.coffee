path = require 'path'
root = path.resolve __dirname, '..'

describe 'istanbul', ->
  Given -> @cli = sinon.stub()
  Given -> @subject = sandbox '../tasks/istanbul',
    'simple-cli': @cli

  Then -> expect(@cli).to.have.been.calledWith
    task: 'istanbul'
    cmd: "#{root}/node_modules/.bin/istanbul"

path = require 'path'
root = path.resolve __dirname, '..'

describe 'istanbul', ->
  Given -> @grunt =
    registerMultiTask: sinon.stub()
  Given -> @context =
    async: sinon.stub()
  Given -> @cb = sinon.stub()
  Given -> @context.async.returns @cb
  Given -> @simpleCli =
    spawn: sinon.stub()
  Given -> @subject = sandbox '../tasks/istanbul',
    'simple-cli': @simpleCli

  When -> @subject @grunt
  And -> expect(@grunt.registerMultiTask).to.have.been.calledWith 'istanbul', 'A grunt wrapper for istanbul', sinon.match.func
  And -> @grunt.registerMultiTask.getCall(0).args[2].apply @context, []
  Then -> expect(@simpleCli.spawn).to.have.been.calledWith @grunt, @context, "#{root}/node_modules/.bin/istanbul", @cb

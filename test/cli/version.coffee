exec = require('child_process').exec
path = require 'path'

packageVersion = require(path.join __dirname, '..', '..', 'package.json').version

describe 'brave-mouse (CLI)', ->
	describe 'version option', ->
		it 'should output brave-mouse’s version when called with -v', (done) ->
			exec bin + ' -v', (error, stdout, stderr) ->
				stdout.should.include 'v' + packageVersion
				done()

		it 'should output brave-mouse’s version when called with --version', (done) ->
			exec bin + ' --version', (error, stdout, stderr) ->
				stdout.should.include 'v' + packageVersion
				done()
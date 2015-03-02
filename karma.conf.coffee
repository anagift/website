webpackConfigFile = require './webpack.config.coffee'

webpackConfig =
  module: webpackConfigFile.module
  resolve: webpackConfigFile.resolve
  plugins: webpackConfigFile.plugins
  devtool: 'eval'
  cache: false

module.exports = (config) ->
  config.set

    basePash: './'

    frameworks: ['mocha', 'chai']

    files: [
      #'../../bower_components/'
      './app/scripts/build.js'
      './test/spec/**/*_spec.coffee'
    ]

    exclude: [
      './app/scripts/app.js'
    ]

    webpack: webpackConfig

    webpackMiddleware: { quiet: true }

    preprocessors:
      './test/spec/**/*_spec.coffee': ['webpack']

    reporters: ['progress', 'mocha', 'coverage']

    coverageReporter:
      type: 'html'
      dir: 'app/coverage/'

    port: 9876

    colors: true

    logLevel: config.LOG_INFO

    autoWatach: false

    browsers: [
      'Chrome'
      #'Firefox'
      #'PhantomJS'
      #'SlimerJS'
    ]

    captureTimeout: 60000

    singleRun: true

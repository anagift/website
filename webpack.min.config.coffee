path = require('path')
current = process.cwd()

webpack = require 'webpack'

module.exports =
  resolve:
    alias:
      'angular-ui-router': 'angular-ui-router/release/angular-ui-router'

    extensions: [
      '',
      '.js',
      '.json',
      '.html',
      '.jsx',
      '.cjsx',
      '.coffee'
    ]

    modulesDirectories: [
      'node_modules'
      'bower_components'
    ]

    root: [
      path.join current, '../../node_moudles'
      path.join current, '../../bower_components'
    ]

  entry: './app/src/app'

  output:
    path: './app/scripts/'
    filename: 'build.js'
    # sourceMapFilename: 'map/[file].map'

  # devtool: '#source-map'

  module:
    loaders: [
      { test: /\.cjsx$/, loader: 'coffee-loader!cjsx-loader' }
      { test: /\.coffee$/, loader: 'coffee-loader' }
      { test: /\.html$/, loader: 'html-loader' }
    ]

  plugins: [
    new webpack.optimize.UglifyJsPlugin
      minimize: false
      compress:
        warnings: false
  ]

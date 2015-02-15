# @cjsx React.DOM
'use strict'

React = require 'react/addons'

module.exports = React.createClass
  displayName: 'SAMPLE'
  render: ->
    <div>
      Render by ReactJs 
      {@props.value}
    </div>

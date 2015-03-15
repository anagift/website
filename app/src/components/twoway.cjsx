# @cjsx React.DOM
'use strict'

###*
 # TWOWAY
 # @class TWOWAY
  
 * @description
 * two way bindingのサンプルのReactJs components
 * フィールドと連動して文字列を表示
 * 
 * @example
###

React = require 'react/addons'

module.exports = React.createClass
  displayName: 'TWOWAY'
  render: ->
    <div>
      Render by ReactJs 
      {@props.value}
    </div>

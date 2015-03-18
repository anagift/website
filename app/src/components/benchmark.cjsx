# @cjsx React.DOM
'use strict'

###*
 # BENCHMARK
 # @class BENCHMARK
  
 * @ngdoc component
 * @name app.component:BENCHMARK
 *
 * @description
 * benchmarkページ用のReactJs component
 * 1500*5の乱数をreactを使って表示
 * 
 * @example
###

React = require 'react/addons'

module.exports = React.createClass
  displayName: 'BENCKMARK'

  render: ->
    data = @props.data

    rows = data.map (datum) ->

      clickHandler = (ev) ->
        console.log 'Still in reactJS'
        console.log ev

      <tr>
        {onClick:clickHandler}
        <td>{datum['0']}</td>
        <td>{datum['1']}</td>
        <td>{datum['2']}</td>
        <td>{datum['3']}</td>
        <td>{datum['4']}</td>
      </tr>

    <table>{rows}</table>

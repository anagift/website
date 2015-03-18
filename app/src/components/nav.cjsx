# @cjsx React.DOM
'use strict'

###*
 # NAV
 # @class NAV
  
 * @ngdoc component
 * @name app.component:NAV
 *
 * @description
 * NAV用のreactjs component
 * グローバルナビゲーションをreactjsで実装
 * 
 * @example
###

React = require 'react/addons'

module.exports = React.createClass
  displayName: 'NAV'
  render: ->
    <ul className="list-table c-nav">
      <li className="list-table__cell">
        <a href="/">top</a>
      </li>
      <li className="list-table__cell">
        <a href="/oneway">oneway</a>
      </li>
      <li className="list-table__cell">
        <a href="/twoway">twoway</a>
      </li>
      <li className="list-table__cell">
        <a href="/transition">transition</a>
      </li>
      <li className="list-table__cell">
        <a href="/users">user</a>
      </li>
      <li className="list-table__cell">
        <a href="/benchmark/angular">angular</a>
      </li>
      <li className="list-table__cell">
        <a href="/benchmark/react">react</a>
      </li>
    </ul>

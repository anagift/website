# @cjsx React.DOM
'use strict'

###*
 # GRANDNAV 
 # @class GRANDNAV
  
 * @ngdoc component
 * @name app.component:GRANDNAV
 *
 * @description
 * grandnav用のreactjs component
 * onClickでfont-sizeがアニメーション
 * アニメーションはcssのtransition
 * 
 * @example
###

React = require 'react/addons'

CSSTransitionGroup = React.addons.CSSTransitionGroup

module.exports = React.createClass
  displayName: 'GRANDNAV'

  getInitialState: ->
    value: 'initial'

  onClick: ->
    if @state.value == 'scene A'
      value = 'scene B'
    else
      value = 'scene A'

    @setState
      value: value

  render: ->
    value =
      <span className="sample" key={@state.value}>
        {@state.value}
      </span>

    <div>
      <i className="icon-mobile"></i>

      <button onClick={@onClick}>
        click!
      </button>

      <CSSTransitionGroup
        transitionName="sample"
        transitionLeave=false
        >
        {value}
      </CSSTransitionGroup>
    </div>

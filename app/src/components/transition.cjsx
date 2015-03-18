# @cjsx React.DOM
'use strict'

###*
 # TRANSITION
 # @class TRANSITION
  
 * @ngdoc component
 * @name app.component:TRANSITION
 *
 * @description
 * TRANSITION用のreactjs component
 * onClickでfont-sizeがアニメーション
 * アニメーションはcssのtransition
 * 
 * @example
###

React = require 'react/addons'

CSSTransitionGroup = React.addons.CSSTransitionGroup

module.exports = React.createClass
  displayName: 'TRANSITION'

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
      <span className="c-transition" key={@state.value}>
        {@state.value}
      </span>

    <div>
      <i className="icon-arrows-ccw animate-spin"></i>

      <button onClick={@onClick}>
        click!
      </button>

      <CSSTransitionGroup
        transitionName="c-transition"
        transitionLeave=false
        >
        {value}
      </CSSTransitionGroup>
    </div>

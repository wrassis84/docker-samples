import logo from '../logo.svg'
import React from 'react'
import '../App.css'
import { withRouter } from 'react-router-dom'
import { connect } from 'react-redux'
import { Button } from 'semantic-ui-react'
import { exampleConstants } from '../actions/example.actions'
import Notification from './example.notificationCreation'
import fetchAPI from '../functions/example.api'


const Example = (props) => {
  const { text, exampleConstants, fetchAPI } = (props)
  const handleButtonClick = () => {
    if (text === undefined) {
      exampleConstants('Hello World!')
    } else {
      exampleConstants(undefined);
    }
  }

  return (
    <div className='App'>
      <header className='App-header'>
        <img src={logo} className='App-logo' alt='logo' />
        <h1 className='App-title'>React & Redux Boilerplate</h1>
      </header>

      <Button onClick={handleButtonClick}> Try Me !!! </Button>
      <p> {text} </p>
      <Notification/>
      <Button onClick={fetchAPI}> Fetch API</Button>
    </div>
  )
}

export default withRouter(connect(
  (state) => ({ text: state.example.example.text }),
  { exampleConstants, fetchAPI }
)(Example))

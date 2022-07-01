import { Component } from "react";
import "./style.css"

import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';

class Main extends Component {
  constructor() {
    super();
    this.state= {
      number: "",
      result: ""
    }
  }

  setNumber = (event) => {
    this.setState({ number: event.target.value });
  }

  result = () => {
    this.setState({ error: "" })
    fetch("http://127.0.0.1:3000/convert", {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ 
      number: parseInt(this.state.number)
    })
    })
    .then(response => response.json())
  }

  render() {
      return (
        <div>
          <div className="container">
            <h1>Input integer number</h1>
            <p><TextField type="number" id="outlined-basic" label="input number" variant="outlined" value={this.state.number} onChange={this.setNumber} /></p>
            <Button variant="contained" onClick={this.result}>Send</Button>
          </div>
        </div>
      )
  }
}

export default Main;
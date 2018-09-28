import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      num1: '',
      num2: ''
    }
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
  }
  setNum1(e) {
    const num1 = e.target.value ? parseInt(e.target.value) : '';
    this.setState({num1});
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : '';
    this.setState({num2});
  }

  add(e){
    e.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({result});
  }
  // your code here

  render() {
    return (
      <div>
        <input onChange={this.setNum1} value={this.state.num1}/>
        <input onChange={this.setNum2} value={this.state.num2}/>
        <button onClick={this.add}>+</button>
        <h1>{this.state.result}</h1> // replace this with your code
      </div>
    );
  }
}

export default Calculator;

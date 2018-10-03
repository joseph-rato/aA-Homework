import React from 'react';
import GiphysIndex from './giphys_index';


class GiphySearch extends React.Component {
  constructor(props){
    super(proprs)
    this.state = {
      searchTerm: '',
    }
    this.handleSubmit = this.handleSubmit.bind(this)
    this.handleChange = this.handleChange.bind(this)
    debugger;
  }

  handleChange (event) {
    event.preventDefault();
    this.setState({searchTerm: event.currentTaget.value})
  }

  handleSubmit (event) {
    event.preventDefault();
    let searchTerm = this.state.searchTerm.split(" ").join("+")
    this.props.fetchSearchGiphys(searchTerm)
  }

  render () {
    return (
      <div>
        <h1>DAMNIT</h1>
        <form onSubmit={this.handleSubmit}>
          <input type="text" value="search" onChange={this.handleChange} />
          <input type="submit" value="Submit this search b**ch" />
        </form>
      </div>

    )
  }
}

export default GiphySearch;

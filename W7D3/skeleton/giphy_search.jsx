import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import {fetchSearchGi phys} from './util/api_util'
import {receiveSearchGiphys} from './actions/giphy_actions'
import {fetchSearchGiphys} from './actions/giphy_actions'

document.addEventListener('DOMContentLoaded', () =>{
  const root = document.getElementById('root')
  const store = configureStore();
  window.store = store;
  window.fetchSearchGiphys = fetchSearchGiphys
  window.receiveSearchGiphys = receiveSearchGiphys
  window.fetchSearchGiphys = fetchSearchGiphys
  ReactDOM.render(<Root store={store}/>, root)
})

import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDispatch = (store) => (next) => (action) => {
  // debugger;
  // const storing = (action) => store.dispatch(action);
  return const datHw = (next) => {
    return const urMum = (action) => {
      let wutAction = console.log(action);
      let wutStore = console.log(store.getState());
      next(action)
      // storing(action);
      wutStore;
    };
  };
};

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);
  // const dispatchin = store.dispatch(action)
  //           addLoggingToDispatch(store)
  store.dispatch = addLoggingToDispatch(store);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

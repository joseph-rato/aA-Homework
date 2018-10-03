import React from 'react';
import { Provider } from 'react-redux';

import giphysSearchContainer from './giphys_search_container';


const Root = ({store}) => {
  return (
    <Provider store={store}>
      <giphysSearchContainer />
    </Provider>
  );
};

export default Root;

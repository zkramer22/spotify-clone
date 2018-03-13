import { merge } from 'lodash';

import { RECEIVE_SEARCH_RESULTS, CLEAR_SEARCH_RESULTS } from '../actions/search_actions';

export default (state = {}, action) => {
  switch (action.type) {
    case RECEIVE_SEARCH_RESULTS:
      return { tracks: Object.keys(action.results.tracks) };
    case CLEAR_SEARCH_RESULTS:
      return { tracks: [] };
    default:
      return state;
  }
};

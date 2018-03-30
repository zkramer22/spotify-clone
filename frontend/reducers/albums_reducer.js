import { merge } from 'lodash';
import { RECEIVE_ALBUM } from '../actions/album_actions';
import { RECEIVE_ARTIST } from '../actions/artist_actions';

export default (state = {}, action) => {
  Object.freeze(state);

  let album;

  switch (action.type) {
    case RECEIVE_ALBUM:
      album = action.payload.album
      return merge({}, state, { [album.id]: album });
    case RECEIVE_ARTIST:
      return merge({}, state, action.payload.albums)
      break;
    default:
      return state;
  }
};
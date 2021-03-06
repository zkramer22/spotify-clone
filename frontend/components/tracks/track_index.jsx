import React from 'react';

import TrackIndexItem from './track_index_item';

class TrackIndex extends React.Component {

  render() {
    const { playlistId, albumId, artistId, tracks, type, openModal } = this.props;

    return (
      <ol className="tracklist">
        { Object.values(tracks).map((track, i) => {
            return (
              <TrackIndexItem
                playlistId={ playlistId }
                albumId={ albumId }
                artistId={ artistId }
                key={ i }
                type={ type }
                openModal={ openModal }
                track={ track } num={ i } />
            );
          })
        }
      </ol>
    );
  }

}

export default TrackIndex;

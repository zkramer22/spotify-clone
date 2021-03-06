class Track < ApplicationRecord
  include PgSearch

  validates :name, :album_id, presence: true

  has_attached_file :audio
  validates_attachment_content_type :audio, content_type: /\Aaudio\/.*\Z/

  belongs_to :album

  has_one :artist,
    through: :album,
    source: :artist

  has_many :track_playlists,
    class_name: :TrackPlaylist,
    foreign_key: :track_id

  has_many :playlists,
    through: :track_playlists,
    source: :playlist

  pg_search_scope :search,
    against: :name,
    :using => {
      :tsearch => { :prefix => true, :normalization => 2 }
    }
end

# def self.search(query)
#   joins(:artist)
#     .where('LOWER(tracks.name) ~* :query OR
#             LOWER(artists.name) ~* :query', query: query)
# end

# joins(:artist, :album)

# OR
#        LOWER(artists.name) ~* :query OR
#        LOWER(albums.name) ~* :query'

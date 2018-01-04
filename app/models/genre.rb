class Genre < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  as_many :artists, through: :songs
  has_many :song_genres
  has_many :songs, through: :song_genres

end

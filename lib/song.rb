class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    result = {}
    for genre in @@genres.uniq
      result[genre] = @@genres.count(genre)
    end
    result
  end
  def self.artist_count
    result = {}
    for artist in @@artists.uniq
      result[artist] = @@artists.count(artist)
    end
    result
  end
  
end
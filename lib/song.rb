class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq #minus duplicates
  end

  def self.artists
    @@artists.uniq #minus duplicates
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

#or
  def self.artist_count
    artist_count = {}
    for artist in @@artists.uniq
      artist_count[artist] = @@artists.count(artist)
    end
  artist_count
  end
end

require "pry"
class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_total = {}
    @@genres.each do |genre|
      if genre_total[genre]
        genre_total[genre] += 1
      else genre_total[genre] = 1
      end
    end
    genre_total
  end

  def self.artist_count
    artist_total = {}
    @@artists.each do |artist|
      if artist_total[artist]
        artist_total[artist] += 1
      else
        artist_total[artist] = 1
      end
    end
    # binding.pry
    artist_total
  end

end

require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count
  @@artist_count
  attr_accessor :name, :artist, :genre, :genre_count
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
  # gc = {}
  # @@genres.uniq.select do |a|
  #   gc =
  new_array = []
  hash={}
@@genres.uniq.map do |geez|
  new_array << [geez, @@genres.count(geez)]

end
hash = new_array.to_h
@@genre_count = hash
end

def self.artist_count
  # gc = {}
  # @@genres.uniq.select do |a|
  #   gc =
  new_array = []
  hash={}
@@artists.uniq.map do |geez|
  new_array << [geez, @@artists.count(geez)]

end
hash = new_array.to_h
@@artist_count = hash
end


end

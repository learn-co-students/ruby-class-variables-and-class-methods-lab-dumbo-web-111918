class Song 
  @@count = 0
  @@all = []
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@genres << genre 
    @@artists << artist 
    
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count 
    counted_genres = {}
    @@genres.uniq.each do |genre|
      counted_genres[genre] = @@genres.count(genre)
    end 
    counted_genres
  end 
  
  def self.artist_count
    counted_artists = {}
    @@artists.uniq.each do |artist|
      counted_artists[artist] = @@artists.count(artist)
    end 
    counted_artists
  end 
end 
    
    
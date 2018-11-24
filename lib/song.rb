class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  def self.count
    @@count
  end

  def self.artists
    array = @@artists.uniq
    array
  end

  def self.genres
    array = @@genres.uniq
    array
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if @@artists.include?(artist)
      @@artist_count[artist] += 1
      @@artists << artist
    else
      @@artist_count[artist] = 1
      @@artists << artist
    end
    if @@genres.include?(genre)
      @@genre_count[genre] += 1
      @@genres << genre
    else
      @@genre_count[genre] = 1
      @@genres << genre
    end
  end
end

bob = Song.new("Be Happy", "Bob", "Reggae")
will = Song.new("What", "Mary", "Hip hop")
smith = Song.new("Cool", "Bob", "Reggae")

puts Song.class_variable_get(:@@artists)
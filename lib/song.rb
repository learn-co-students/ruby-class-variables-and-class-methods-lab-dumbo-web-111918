#Define your Song class such that an individual song is initialized with a name, artist and genre.
#There should be an attr_accessor for those three attributes.
require "pry"

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
        @@genres << self.genre
        @@artists << self.artist
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
        result = {}
        @@genres.map do |el|
            if result.has_key?(el) == false
                result[el] = 0  
            end
            result[el] += 1
        end   
            return result   
    end


    def self.artist_count
        result = {}
        @@artists.map do |el|
            if result.has_key?(el) == false
                result[el] = 0  
            end
            result[el] += 1
        end   
            return result   
    end

end 

# song1= Song.new("99 Problems", "Jay-Z", "rap")
# song2= Song.new("hotline bling", "Drake", "rap")
# song3= Song.new("hello", "Adele", "romantic")
# song4= Song.new("scars", "paparoach", "rock")

# binding.pry
# 0
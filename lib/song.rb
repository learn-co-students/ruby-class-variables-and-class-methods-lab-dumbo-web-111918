class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    
    attr_accessor :name, :artist, :genre 
    
    def initialize (name,artist,genre)
        @name = name
        @artist = artist 
        @genre = genre 
        @@count += 1
        @@artists << artist 
        @@genres << genre 
        genre_counter
        artist_counter
       
    end

    def genre_counter
       if @@genre_count[@genre] 
            @@genre_count[@genre] += 1
        else 
            @@genre_count[@genre] = 1       
        end  
    end
   
    def artist_counter
        if @@artist_count[@artist]
            @@artist_count[@artist] += 1 
        else 
            @@artist_count[@artist] = 1 
        end
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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

end


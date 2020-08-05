class Song
    
    #sets up class variables below
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
    end #of initialize

    attr_accessor :name, :artist, :genre #sets and gets
    
    #method to call on count
    def self.count
        @@count
    end
    #method to bring all genres without producing duplicates
    def self.genres
        @@genres.uniq 
    end 
    #method to list artists w/o producing duplicates 
    def self.artists 
        @@artists.uniq 
    end
    #method to tell how many songs in each genre
    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] +=1
            else
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end
    #method to gell how many songs per artist
    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else 
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end
end #of Song class
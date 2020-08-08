require 'pry'

class Song
    
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
        
    def self.count
        @@count
    end
    
    def self.genre_count
        genre_hash = {}
    @@genres.each do |genre_name|
        if genre_hash[genre_name]
            genre_hash[genre_name] += 1
        else
            genre_hash[genre_name] = 1
    end
end
genre_hash
end
    
    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist_name|
            if artist_hash[artist_name]
                artist_hash[artist_name] += 1
            else
                artist_hash[artist_name] = 1
            end
            # binding.pry
            # "p"    
end
artist_hash
end
end
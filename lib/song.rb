require 'pry'

class Song 

    attr_accessor :name, :artist, :genre
    attr_reader :artist

    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}
    
    def initialize(name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre

        @@genres << genre
        @@artists << artist

        @@count += 1
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
    #returns a hash with key of genre and value of number of songs that have that genre    
        @@genres.each do |genre|
            # @@genre_count[genre] adds to @@genre_count hash a key of genre and value of @@genres.count(genre)
          @@genre_count[genre] = @@genres.count(genre)
        end
        @@genre_count
    end

    def self.artist_count
    #returns a hash with key of artist and value of number of songs from that artist
        @@artists.each do |artist|
          @@artist_count[artist] = @@artists.count(artist)
        end
        @@artist_count
    end

end # end of Song class

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# bodies_of_water = Song.new("Bodies of Water", "Saico Therapy", "ambient rock")
# into_hell = Song.new("Into Hell", "Saico Therapy", "ambient rock")
# p Song.artist_count
# binding.pry
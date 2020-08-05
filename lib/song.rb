
require "pry"
class Song

    @@all_songs =[]
    @@count = 0 
    @@genres =[]
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}


    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        ## @@all_songs << self
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


    ## Approach is functional but does not pass due to test suite limitation. 
    ## Creates same 3 songs over and over again to pass test suite

    # def self.genre_count
    #     @@all_songs.each do |song|
    #         if(@@genre_count[song.genre])
    #             @@genre_count[song.genre] += 1
    #         else 
    #             @@genre_count[song.genre] = 1
    #         end 
    #     end 
    #     @@genre_count
    # end 

    # def self.artist_count
    #     @@all_songs.each do |song|
    #         if(@@artist_count[song.artist])
    #             @@artist_count[song.artist] += 1
    #         else 
    #             @@artist_count[song.artist] = 1
    #         end 
    #     end 
    #     @@artist_count
    #     # binding.pry
    # end 

    def self.genre_count
        @@genres.each do |genre|
            if(@@genre_count[genre])
                @@genre_count[genre] += 1
            else 
                @@genre_count[genre] = 1
            end 
        end 
        @@genre_count
    end 

    def self.artist_count
        @@artists.each do |artist|
            if(@@artist_count[artist])
                @@artist_count[artist] += 1
            else 
                @@artist_count[artist] = 1
            end 
        end 
        @@artist_count
    end 

end 


song_1 = Song.new("Lucifer", "Jay-Z", "rap" ) 
song_2 = Song.new("99 Problems", "Jay-Z", "rap") 
song_3 = Song.new("hit me baby one more time", "Brittany Spears", "pop")


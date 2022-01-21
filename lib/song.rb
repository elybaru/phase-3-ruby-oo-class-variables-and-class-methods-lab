require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count= 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        @name = name
        @artist = artist
        @genre = genre
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
        genre_hash = {}
        genre_hash = @@genres.tally 
    end

    def self.artist_count
        artists_hash = {}
        artists_hash = @@artists.tally
    end
end

class Artist 
    attr_accessor :name, :artist , :genre

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select {|s| s.artist == self}
    end

    def new_song(name, genre)
        Song.new(name,self, genre)
    end

    def genres
        songs.map {|s| s.genre}
    end
end

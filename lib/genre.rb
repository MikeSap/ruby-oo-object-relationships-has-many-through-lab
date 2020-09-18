class Genre

    @@all = []

    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def songs
        Song.all.select {|songs| songs.genre == self}
    end

    def artists
        self.songs.collect {|songs| songs.artist}
    end
end
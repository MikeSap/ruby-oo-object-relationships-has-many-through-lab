class Artist

    attr_accessor :name, :genre

    @@all = []

    def self.all
      @@all
    end

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def songs
        Song.all.select {|songs| songs.artist == self}
    end
    
    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres
        self.songs.collect {|songs| songs.genre}        
    end


end
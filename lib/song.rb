class Song 
    attr_reader :name
    attr_reader :artist 
    attr_reader :genre

    @@count = 0
    @@artists = []
    @@genres = []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
    @@count +=1
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
    @@genres.tally
end

def self.artist_count
    @@artists.tally
end
end

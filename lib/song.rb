class Song
    attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
    def initialize(name, artist,genre)
        @@count +=1
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
    @@genres.inject(Hash.new(0)) { |memo, i| memo[i] += 1; memo}
end

def self.artist_count 
    @@artists.inject(Hash.new(0)) { |memo, i| memo[i] += 1; memo}
end

end


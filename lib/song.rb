class Song
  attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @@count += 1
  @name = name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@genres << genre
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
def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each do |art|
    artist_count[art] += 1
  end
  return artist_count
end
def self.genre_count
  genre_count = Hash.new(0)
  @@genres.each do |gen|
    genre_count[gen] += 1
  end
  return genre_count
end
end

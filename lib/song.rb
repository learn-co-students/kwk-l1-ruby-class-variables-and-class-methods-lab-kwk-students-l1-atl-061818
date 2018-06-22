class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@names = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@names << name
  end 
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.names
    @@names.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
 def self.genre_count
   genre_count = Hash.new(0)
   @@genres.each do |genre|
     genre_count[genre] += 1
end
return genre_count
end

def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each do |artist|
    artist_count[artist] += 1
  end
  return artist_count
end
end

  
  

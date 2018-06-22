class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  # @@artist_count = {}
  # @@genre_count = {}

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
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end  
    end
    genre_count
  end 
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end 
    artist_count
  end 
  
  
  
  
  
  
end 
  
song1 = Song.new("Hit Me Baby One More Time", "Brittany Spears", "pop")
song2 = Song.new("99 Problems", "Jay-Z", "rap")
song3= Song.new("Lucifer", "Jay-Z", "rap")

# puts Song.count
puts Song.artists
puts Song.genres

  
  

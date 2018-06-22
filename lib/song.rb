class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genre = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genre << genre
  end
  def self.count
    @@count
  end

  def self.artists
    @@artists
  end
# def artists
#   artists = ["Jay-Z", "Drake", "Beyonce"]
# end
  def self.genres
    #  @@genres =>["Rap","Rap","Pop"]
  end
end

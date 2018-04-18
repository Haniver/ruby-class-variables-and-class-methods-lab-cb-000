class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist if !@@artists.include?(artist)
    @genre = genre
    @@genres << genre if !@@genres.include?(genre)
    @@count += 1
  end
  def count
    @@count
  end
end

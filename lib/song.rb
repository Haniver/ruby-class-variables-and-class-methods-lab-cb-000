class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist if !unique_artists.include?(artist)
    end
    unique_artists
  end
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre if !unique_genres.include?(genre)
    end
    unique_genres
  end
  def self.count
    @@count
  end
  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres_hash.has_key?(genre)
        genres_hash[genre] = 1
      else
        genres_hash[genre] = 1
      end
    genres_hash
  end
  def artist_count

  end
end

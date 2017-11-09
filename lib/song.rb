class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
  end

  def self.count
    @@count
  end

  def self.artists
    artists = @@artists
    artists.collect { |artist| artists.delete_if { |other_artist| other_artist == artist } artist }
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end

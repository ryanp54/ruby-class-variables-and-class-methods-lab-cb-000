class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist if !@@artists.include?(artist)
    @@genres << genre if !@@genres.include?(genre)
    @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
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

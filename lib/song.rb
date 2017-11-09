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
    @@artist << artist if !@@artist.include?(artist)
    @@genre << genre if !@@genre.include?(genre)
    @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1 
    @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
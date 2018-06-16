class Song
  @@song_count = 0
  @@song_artists = {}
  @@song_genres = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(song_name, song_artist, song_genre)
    @@song_count += 1
    @name = song_name
    @artist = song_artist
    @@song_artists[song_artist] = 0 if !@@song_artists.include?(song_artist)
    @@song_artists[song_artist] += 1
    @genre = song_genre
    @@song_genres[song_genre] = 0 if !@@song_genres.include?(song_genre)
    @@song_genres[song_genre] += 1
  end
  
  def self.count
    @@song_count
  end
  
  def self.artists
    @@song_artists.keys
  end
  
  def self.genres
    @@song_genres.keys
  end
  
  def self.genre_count
    @@song_genres
  end
  
  def self.artist_count
    @@song_artists
  end
end
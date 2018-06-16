class Song
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(song_name, song_artist, song_genre)
    @@count += 1
    @name = song_name
    @artist = song_artist
    @@artists << song_artist
    #@@artists[song_artist] += 1
    @genre = song_genre
    @@genres << song_genre
    #@@genres[song_genre] += 1
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
    #@@genres
  end
  
  def self.artist_count
    #@@artists
  end
end
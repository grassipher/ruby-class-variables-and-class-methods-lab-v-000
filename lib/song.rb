class Song
  @@song_count = 0
  @@song_artists = {}
  @@song_genres = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(song_name, song_artist, song_genre)
    @@song_count += 1
    
    
  end
end
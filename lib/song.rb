class Song 
  attr_accessor :name, :artist 

  def initialize(name) 
    @name = name 
    @@artist = artist 
  end 

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_song = self.new(song_name)
    new_song.artist_name(filename) 
    new_song 
  end 
  
  def artist_name
    self.artist = Artist.find_or_create_by_name(name)
  end 
  
end 
class Song 
  attr_accessor :name, :artist 

  def initialize(name) 
    @name = name 
    @@artist = artist 
  end 

  def self.new_by_filename(filename)
    # song = self.new 
    # song.title = filename.split(" - ")[1]
    # artist = filename.split(" - ")[0]
    # song = self.new(name)
    # song.artist = artist
    # song 
  end 
  
  def artist_name  
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end 
  
end 
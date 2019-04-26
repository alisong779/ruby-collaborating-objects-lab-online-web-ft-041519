require 'pry'
class Artist 
  attr_accessor :name, :songs  

  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song) 
    @songs << song 
    song.artist = self 
  end 
  
  def self.all  
     @@all 
  end 
  
  def save
    @@all << self 
  end 
    
  def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| Artist.name == name} 
    
      #binding.pry 
  end 
  
  def print_songs 
     songs.each {|song| puts song.name}
  end 
  
end 

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
      self.all.each do |artist|
        if Artist.name == name
          return Artist
        else
          return Artist.new(name)
      end
    end
  end
  
  def print_songs 
     songs.each {|song| puts song.name}
  end 
  
end 

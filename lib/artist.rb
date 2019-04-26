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
  
  # def self.create(name)
  #   artist = self.new(name)     
  #   artist.name = name 
  #   artist 
  # end 
  
  # def self.find(name)
  #   self.all.find {|artist| artist.name == name}                                                            
  # end
    
  
  def self.find_or_create_by_name(name)
      #self.all.find {|artist| Artist.name == name} || self.new(name).save
      # self.find(name) ? self.find(name) : self.create(name)
      #binding.pry 
  end 
  
  def print_songs 
     songs.each {|song| puts song.name}
  end 
  
end 

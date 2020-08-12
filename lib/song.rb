require 'pry'
class Song 
attr_accessor :name, :artist 
 
 @@all = []
 
 
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 

  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    artist_name=(artist)
    @artist.add_song(new_song)
    new_song
    end
     
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    
    end
   

end 
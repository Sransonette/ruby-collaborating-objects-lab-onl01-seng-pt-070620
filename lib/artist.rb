require 'pry'


class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    
  end
  
  
  def add_song(song)
    song.artist = self
    
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    Song.all.length do |count|
    end
  end
  
  def self.all
    @@all
  end
  
<<<<<<< HEAD
  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name) 
    else 
      self.new(artist_name)
    end
=======
  def self.find_or_create_by_name(song)
  artist = self.all.find {|artist| artist.name == name}
<<<<<<< HEAD
  if artist
=======
  if song = artist.name 
>>>>>>> 5cddaf2920221937c4e1e1271a498f94690ab24a
    artist 
  else 
    name = self.new(name)
>>>>>>> e7ab82d702042393a5725913c6d23256b0f991a0
  end
  
  def self.find(name)
    artist = self.all.find {|artist| artist.name == name}
  end 
  
  def print_songs
    songs.each{|song| puts song.name}
  end
  
  
  
  
  
end
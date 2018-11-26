require 'pry'
class Genre

  attr_accessor :name, :artists

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    songs = Song.all.select {|song| song.genre == self}
    songs
  end

  def self.all
    @@all
  end

  def artists
    songs.map{|song| song.artist}
  end
end

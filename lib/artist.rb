require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs
    songs = Song.all.select {|song| song.artist == self}
    songs

  end

  def genres
    songs.map {|song| song.genre}
  end

end

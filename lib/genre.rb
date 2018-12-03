class Genre
  attr_accessor :genre, :artist, :song, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

# that iterates over the genre's collection of songs and collects
# the artist that owns each song.
  def artists
    songs.map {|song| song.artist}
  end

  # def name
  #   self.all.each {|genre| genre.name}
  # end
end

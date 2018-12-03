class Artist
attr_accessor :name, :song, :artist, :genre

  @@all = []
  # @@songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

 def self.all
   @@all
  end

# takes in an argument of a name and genre creates a new song.
# That song should know that it belongs to the artist.
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

# iterates through all songs and finds the songs that belong to that artist.
# Try using select to achieve this.
  # def songs
  #   Song.all.select do |song|
  #     song.artist == self
  #   end
  # end

 # iterates over that artist's songs and collects the genre of each song.

  def genres
    Song.all.map {|song| song.genre } 
  end

end

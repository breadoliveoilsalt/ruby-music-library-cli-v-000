class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end

  def add_song(song)
    if song.genre == nil
      song.genre = self
    end
    if !(songs.include?(song))
      songs << song
    end
  end

end

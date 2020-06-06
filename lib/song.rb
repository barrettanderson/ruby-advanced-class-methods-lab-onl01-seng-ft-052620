class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    # instantiates and saves the song, and it returns the new song that was created
    song = Song.new
    # saves the song
    song.save
    # returns the new song that was created
    song

  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

end

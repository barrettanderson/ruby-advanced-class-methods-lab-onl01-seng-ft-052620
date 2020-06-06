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

  def self.create_by_name(name)
    song = self.new_by_name(name)
    song.save
    song
  end

  def self.find_by_name(name)
    self.all.find { |song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if song = self.find_by_name(name)
      song
    else
      self.create_by_name(name)
  end
end

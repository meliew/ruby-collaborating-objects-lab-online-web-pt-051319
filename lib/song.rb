class Song

attr_accessor :name, :artist
@@all = []

def initialize(name)
  @name = name
  @@all = []
end

def self.new_by_filename(filename)
  song = Song.new(filename.split(" - ")[1])
  song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
  song
end


end

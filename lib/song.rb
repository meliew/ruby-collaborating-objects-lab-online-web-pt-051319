class Song

attr_accessor :name, :artist
@@all = []

def initialize(name)
  @name = name
  @@all = []
end

def self.new_by_filename(filename)
  artist, name = filename.split(" - ")
  song = self.new(name)
  song

end



end

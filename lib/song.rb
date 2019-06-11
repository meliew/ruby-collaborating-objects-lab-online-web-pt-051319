class Song

attr_accessor :name, :artist
@@all = []

def initialize(name)
  @name = name
  @@all = []
end

def self.new_by_filename(filename)
  artist_name, song_name = filename.chomp(" .mp3").split(" - ")
  song = Song.new(song_name)
  song.artist = Artist.find_or_create_by_name(artist_name)
  song.save
  # song = Song.new(filename.split(" - ")[1])
  # song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
  # song.artist.add_song(song)
  # song
end


end

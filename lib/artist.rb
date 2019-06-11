require 'pry'
class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
@songs << song
song.artist = self
end

def songs
  @songs
end

def save
  @@all << self
end

def self.all
  @@all
end


def self.find_or_create_by_name(name)
  #iterate over the artists

new_artist = self.all.find do |artist|

    artist == name
  end
     Artist.new(name).save
  end

end

def print_songs
@songs.each do |song|
  puts song.name
  end

end



end

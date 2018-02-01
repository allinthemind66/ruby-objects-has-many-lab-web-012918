require 'pry'

class Artist
  attr_reader :name
  attr_accessor :songs
  @@song_count = 0
def initialize(name)
    @name = name
    @songs = []
  end

def add_song(song_name)
  @songs << song_name
  song_name.artist = self
  @@song_count += 1
  #binding.pry
end
def add_song_by_name(song_name)
  song_name = Song.new(song_name)
  @songs << song_name
  song_name.artist = self
  @@song_count += 1
end
#binding.pry

def self.song_count
  @@song_count
end

end

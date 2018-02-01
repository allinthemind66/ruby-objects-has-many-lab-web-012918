class Song
  attr_accessor :artist, :song, :name
  def initialize(song)
    @song = song
  end
  def name
    @song
  end

  def artist_name
#binding.pry
    if @artist
      @artist.name
    else
      nil
    end

  end
end

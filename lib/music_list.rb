class Music
  def initialize
    @music_list = []
  end

  def add(song)
    @music_list << song
  end

  def list
    return @music_list.join(", ")
  end
end
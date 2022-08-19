require 'music_list'

describe Music do
  it "Add songs to the list return the list" do
    music = Music.new
    music.add("1")
    music.add("2")
    music.add("3")
    expect(music.list).to eq "1, 2, 3"
  end

  it "Given an empty string return an empty array" do
    music = Music.new
    music.add("")
    expect(music.list).to eq ""
  end

  it "Nothing given return an empty array" do
    music = Music.new
    expect(music.list).to eq ""
  end
end
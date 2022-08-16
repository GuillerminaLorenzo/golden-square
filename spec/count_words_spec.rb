require "count_words"

RSpec.describe "count_words method" do
  it "given an empty string return 0" do
  expect(count_words("")).to eq 0
  end

  it "given an string of four words return 4" do
    expect(count_words("one two three four")).to eq 4
  end

  it "given an string of ten words return 10" do
    expect(count_words("1 2 3 4 5 6 7 8 9 0")).to eq 10
  end
end
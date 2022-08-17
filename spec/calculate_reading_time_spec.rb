require 'calculate_reading_time'

RSpec.describe "calculate_reading_time method" do
  it "given an empty string returns 0" do
    result = calculate_reading_time("")
    expect(result).to eq 0
  end

  it "given a text with less than 200 words return 1" do
    result = calculate_reading_time("one")
    expect(result).to eq 1
  end

  it "given a text with 200 words return 1" do
    result = calculate_reading_time("one " * 200)
    expect(result).to eq 1
  end

  it "given a text with 300 words return 2" do
    result = calculate_reading_time("one " * 300)
    expect(result).to eq 2
  end

  it "given a text with 400 words return 2" do
    result = calculate_reading_time("one " * 400)
    expect(result).to eq 2
  end

  it "given a text with 25000 words return 125" do
    result = calculate_reading_time("one " * 25000)
    expect(result).to eq 125
  end
end
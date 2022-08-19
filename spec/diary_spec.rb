require 'diary'

describe Diary do
  it "No entries given" do
  diary = Diary.new
  expect(diary.all).to eq []
  end
end
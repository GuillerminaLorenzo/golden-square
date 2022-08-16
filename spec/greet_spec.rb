require 'greet.rb'

RSpec.describe "greet method" do
  it "given Guille return 'Hello, Guille!" do
  result = greet("Guille")
  expect(result).to eq "Hello, Guille!"
  end

  it "given Lili return 'Hello, Lili!" do
    result = greet("Lili")
    expect(result).to eq "Hello, Lili!"
  end
end
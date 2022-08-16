require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "given an empty string return an empty string" do
    expect(make_snippet("")).to eq ""
  end

  it "given an string of five words return the same string" do
    result = make_snippet("Work through this three series")
    expect(result).to eq "Work through this three series"
  end

  it "given an string of seven words return the first five words and ..." do
    result = make_snippet("Return to step 1 and keep going")
    expect(result).to eq "Return to step 1 and..."
  end

end
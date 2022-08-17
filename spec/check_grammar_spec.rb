require 'check_grammar'

RSpec.describe "check_grammar method" do
  context "when given an empty string" do
    it "fails" do
      expect{ check_grammar("") }.to raise_error "Not a sentence."
    end
  end

  it "when given the correct string return true" do
    result = check_grammar("Hello, world.")
    expect(result).to eq true
  end

  it "when given the wrong string return false" do
    result = check_grammar("Hello, world")
    expect(result).to eq false 
  end

  it "when given the wrong string return false" do
    result = check_grammar("hello, world.")
    expect(result).to eq false 
  end
end
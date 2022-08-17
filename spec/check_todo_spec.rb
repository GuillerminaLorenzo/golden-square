require 'check_todo'

RSpec.describe "check_todo method" do
  context "When given an empty string" do
    it "fails" do
      expect{check_todo("")}.to raise_error "No string included."
    end
  end
  it "when given a correct string return true" do
    result = check_todo("Hello #TODO")
    expect(result).to eq true
  end
  it "when given a wrong string return false" do
    result = check_todo("hello, world.")
    expect(result).to eq false
  end
  context "When given an integer" do
    it "fails" do
      expect{check_todo(8)}.to raise_error "No string included."
    end
  end
end
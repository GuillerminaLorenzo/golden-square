require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "give 'horse' return 'Correct! Come in.'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  
  it "give 'here' return 'Close, but nope.'" do
    result = check_codeword("here")
    expect(result).to eq "Close, but nope."
  end

  it "give 'hello' return 'WRONG!'" do
    result = check_codeword("hello")
    expect(result).to eq "WRONG!"
  end
end
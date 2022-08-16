require 'report_length'

RSpec.describe "report_length method" do
  it"Given 'one' returns 3" do
    result = report_length("one")
    expect(result).to eq "This string was 3 characters long."
  end
  it "Given 'four' returns 4" do
     result = report_length("four")
     expect(result).to eq "This string was 4 characters long."
  end
end
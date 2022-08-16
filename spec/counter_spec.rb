require 'counter.rb'

RSpec.describe Counter do
  it "added 4 return 4" do
    num = Counter.new()
    num.add(4)
    result = num.report()
    expect(result).to eq "Counted to 4 so far."  
  end
end
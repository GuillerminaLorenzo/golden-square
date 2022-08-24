require 'cat_facts'


describe CatFacts do
    it "returns a fact about cats" do
        fake_requester = double :requester
        cat_facts = CatFacts.new(fake_requester)
        expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"The average litter of kittens is between 2 - 6 kittens.","length":55}')
        expect(cat_facts.provide).to eq "Cat fact: The average litter of kittens is between 2 - 6 kittens."
    end
end
require 'contact'

describe Contact do
    it "returns contact's name" do
        contact = Contact.new("Guille", 1234)
        expect(contact.name).to eq "Guille"
    end
    
    it "returns contact's number" do
        contact = Contact.new("Guille", 1234)
        contact.number # => 1234
    end
end


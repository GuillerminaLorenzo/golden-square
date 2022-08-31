require 'menu'

describe Menu do
    it "initialize with an empty menu" do
        menu = Menu.new
        expect(menu.list_of_dishes).to eq []
    end

    it "add dishes to the list and return the list" do
        menu = Menu.new
        burguer = double :burguer
        menu.add_dishes(burguer)
        result = menu.list_of_dishes
        expect(result).to eq [burguer]
    end
end
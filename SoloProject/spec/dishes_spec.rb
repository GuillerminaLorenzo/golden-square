require 'dishes'

describe Dishes do
    it "initialize item and return name" do
        dish_1 = Dishes.new("Burguer", 13.5)
        expect(dish_1.name).to eq "Burguer"
    end

    it "initialize item and return price" do
        dish_1 = Dishes.new("Burguer", 13.5)
        expect(dish_1.price).to eq 13.5
    end
end
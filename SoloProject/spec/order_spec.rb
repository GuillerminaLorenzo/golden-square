require 'order'

describe Order do
    it "initialize customer and return name" do
        customer_1 = Order.new("customer 1", 1234)
        expect(customer_1.name).to eq "customer 1"
    end

    it "initialize customer and return phone number" do
        customer_1 = Order.new("customer 1", 1234)
        expect(customer_1.phone).to eq 1234
    end

    it "given dishes return complete order" do
        customer_1 = Order.new("customer 1", 1234)
        burguer = double :burguer, price: 13.50
        customer_1.add_order(burguer, 3)
        result = customer_1.complete_order
        expect(result).to eq [burguer, burguer, burguer]
    end

    it "given dishes return total price" do
        customer_1 = Order.new("customer 1", 1234)
        burguer = double :burguer, price: 13.5
        customer_1.add_order(burguer, 3)
        result = customer_1.total_price
        expect(result).to eq 40.5
    end
end
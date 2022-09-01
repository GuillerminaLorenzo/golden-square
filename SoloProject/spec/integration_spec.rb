require 'dishes'
require 'menu'
require 'order'
require 'receipt'
require 'twilio'

describe "integration 2" do

    it "add an dish to the menu and return the complete menu" do
        burguer = Dishes.new("Burguer", 13.5)
        menu = Menu.new
        menu.add_dishes(burguer)
        result = menu.list_of_dishes
        expect(result).to eq [burguer]
    end

    it "add order and return complete order" do
        burguer = Dishes.new("Burguer", 13.5)
        customer_1 = Order.new("customer 1", +16105557069)
        customer_1.add_order(burguer, 3)
        result = customer_1.complete_order
        expect(result).to eq [burguer, burguer, burguer]
    end

    it "given dishes return total price" do
        customer_1 = Order.new("customer 1", +16105557069)
        burguer = Dishes.new("Burguer", 13.5)
        customer_1.add_order(burguer, 3)
        result = customer_1.total_price
        expect(result).to eq 40.5
    end

    it "prints order" do
        io = double :io
        customer_1 = Order.new("customer 1", +16105557069)
        burguer = Dishes.new("Burguer", 13.5)
        customer_1.add_order(burguer, 3)
        order = Recipt.new(customer_1, io)
        expect(io).to receive(:puts).with("Burguer - 13.5")
        expect(io).to receive(:puts).with("Burguer - 13.5")
        expect(io).to receive(:puts).with("Burguer - 13.5")
        order.print_order
    end

    it "prints receipt" do
        io = double :io
        customer_1 = Order.new("customer 1", +16105557069)
        burguer = Dishes.new("Burguer", 13.5)
        customer_1.add_order(burguer, 3)
        receipt = Recipt.new(customer_1, io)
        expect(io).to receive(:puts).with("Customer: customer 1").ordered
        expect(io).to receive(:puts).with("Order: ").ordered
        expect(io).to receive(:puts).with("Burguer - 13.5").ordered
        expect(io).to receive(:puts).with("Burguer - 13.5").ordered
        expect(io).to receive(:puts).with("Burguer - 13.5").ordered
        expect(io).to receive(:puts).with("Total: 40.5").ordered
        receipt.print_receipt
    end

    it "sends message" do
        client = TwilioMessage.new(double :client)
        customer_1 = Order.new("customer 1", +16105557069)
        burguer = Dishes.new("Burguer", 13.5)
        time = Time.new(2022, 9, 1, 4, 30, 0)
        customer_1.add_order(burguer, 3)
        receipt = Recipt.new(customer_1, client)
        expect(client).to receive(:send_sms).with(hash_including(:body, :to))
        receipt.send_massage(time, client)
    end
end
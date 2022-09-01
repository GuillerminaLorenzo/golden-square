require 'receipt'

describe Recipt do
    it "prints order" do
        io = double :io
        customer = double :customer, order: [double(:burguer, name: "Burguer", price: 13.5)]
        order = Recipt.new(customer, io)
        expect(io).to receive(:puts).with("Burguer - 13.5")
        order.print_order
    end

    it "prints receipt" do
        io = double :io
        customer = double :customer, name: "customer 1", total_price: 13.5, order: [double(:burguer, name: "Burguer", price: 13.5)]
        receipt = Recipt.new(customer, io)
        expect(io).to receive(:puts).with("Customer: customer 1").ordered
        expect(io).to receive(:puts).with("Order: ").ordered
        expect(io).to receive(:puts).with("Burguer - 13.5").ordered
        expect(io).to receive(:puts).with("Total: 13.5").ordered
        receipt.print_receipt
    end
end
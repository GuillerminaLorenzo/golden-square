require_relative 'dishes'
require_relative 'order'

class Recipt
    def initialize(customer, io)
        @customer = customer 
        @io = io
    end

    def print_order
        @customer.order.each do |dishes|
            @io.puts "#{dishes.name} - #{dishes.price}"
        end
    end

    def print_receipt
        @io.puts "Customer: #{@customer.name}"
        @io.puts "Order: " 
        print_order
        @io.puts "Total: #{@customer.total_price}"
    end

    def order_message(time)
        "Thank you! Your order was placed and will be delivered before #{time.strftime("%H:%M")}"
    end

    def send_massage(time, customer)
        delivery_time = time # (40 * 60)
        client.send_sms(
            to: @customer.phone,
            body: order_message(delivery_time)
        )
        # @customer.complete_order
    end
end
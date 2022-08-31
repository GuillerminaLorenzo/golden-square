require_relative 'dishes'

class Order
    def initialize(name, number)
        @name = name
        @phone = number
        @order = []
    end
    attr_accessor :name, :phone, :order

    def add_order(dishes, quantity)
        quantity.times do
            @order << dishes
        end
    end

    def total_price
        @order.reduce(0) { |sum, dishes| sum + dishes.price.to_f }
    end

    def complete_order
        @order
    end
end
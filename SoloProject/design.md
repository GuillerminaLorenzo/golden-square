>As a customer
>So that I can check if I want to order something
>I would like to see a list of dishes with prices.

>As a customer
>So that I can order the meal I want
>I would like to be able to select some number of several available dishes.

>As a customer
>So that I can verify that my order is correct
>I would like to see an itemised receipt with a grand total.

>As a customer
>So that I am reassured that my order will be delivered on time
>I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

# Design

```ruby 
class Menu
    def initialize
        # menu is an array to store dishes
    end

    def add_dishes(dishes) #instance of Dishes
        # to add dishes to the menu array
    end

    def all
        # return the whole menu
    end
end

class Dish
    def initialize(name, price)
        # dish's name is a string
        # price is an integer
    end
end

class Order 
    def initialize(name, number)
        # customer's name is a string
        # phone number is an integer
        # order is an array to store orders
    end

    def add_order(dishes, quantity) #dishes is an instance of Dishes
        # to add quantity times of dishes to the order
    end

    def total_price
        # return total price of the order
    end

    def complete_order
        # return complete order
    end
end

class Recipt
    def initialize(customer, io)
        # customer is a string
    end

    def print_order
        # prints customers order (dishes)
    end

    def print_receipt
        # prints customers receipt (customer's name, order and total)
    end

    def order_message(time)
        # confirmation message and delivery time
        # doesn't return anything
    end

    def send_massage(time, customer)
        # delivery time
        # returns order_message at time
    end
end
```
require_relative 'dishes'

class Menu
    def initialize
        @menu = []
    end
    attr_accessor :menu

    def add_dishes(dishes)
        @menu << dishes
    end

    def list_of_dishes
        @menu
    end
end
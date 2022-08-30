require_relative 'todo'

class TodoList
    def initialize
        @todo_list = []
    end

    def add(task)
        @todo_list << task
    end

    def incomplete
        @todo_list.select { |task| !task.done?}
    end

    def complete
        @todo_list.select { |task| task.done?}
    end

    def all
        @todo_list
    end
end
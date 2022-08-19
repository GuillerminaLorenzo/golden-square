class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) 
    @todo_list << todo
  end

  def incomplete
    @todo_list.select { |tasks| !tasks.done?}
  end 

  def complete
    @todo_list.select { |tasks| tasks.done?}
  end

  def give_up!
    @todo_list.map {|tasks| tasks.mark_done!}
  end
end
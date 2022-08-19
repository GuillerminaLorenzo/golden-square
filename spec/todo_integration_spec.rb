require 'todo'
require 'todo_list'

describe "integration" do
  context "given a task return the list"
  it "returns incomplete tasks" do
    todo = Todo.new("Walk the dog")
    todo_list = TodoList.new
    todo_list.add(todo)
    expect(todo_list.incomplete).to eq [todo]
  end

  it "returns complete tasks" do
    todo_2 = Todo.new("Walk the cat")
    todo_list = TodoList.new
    todo_list.add(todo_2)
    todo_2.mark_done!
    expect(todo_list.complete).to eq [todo_2]
  end

  it "returns all complete tasks" do
    todo_1 = Todo.new("Walk the dog")
    todo_2 = Todo.new("Walk the cat")
    todo_list = TodoList.new
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.give_up!
    expect(todo_list.complete).to eq [todo_1, todo_2]
  end
end
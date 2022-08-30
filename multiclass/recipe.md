{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can record my experiences
I want to keep a regular diary
# Diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries
# DiaryEntry => Diary

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have(min) and my reading speed(wpm)
# => Diary

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary
# Todo => TodoList
# TodoList => Diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries
# Contacts => DiaryEntry

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

``` ruby
class Diary
    def add(entries)
    #instance of DiaryEntry
    end
    
    def all
    #return a list of entries
    end

    def count_words
    #returns how many words in entries
    end

    def reading_time(wpm, min)
    #wpm is an integer that represents words per minute
    #min is an integer that represents minutes to read
    #to read based on how much time I have and my reading speed
    end

    def todo_list
    #returns todo_list
    end
    
    def list_of_contacts
    #returns contacts in DiaryEntry
    end
end

class DiaryEntry
    def initialize(title, contents) #strings
    # array to store contacts
    end

    def add_contacts 
    # instance of Contacts class
    end

    def count_words
    #returns how many words in contents
    end
end

class Contacts
    def initialize(name, number)
    # name is a string
    # number is an integer
    end
end

class TodoList
    def add(todo)
    #instance of Todo class
    end

    def incomplete
    #returns list of all incompletes todos
    end

    def complete
    #returns list of all complete todos
    end

    def all
    #returns list of all todos
    end
end

class Todo
    def initialize(task) #string
    #default value for done is false
    end

    def mark_done
    #change done value to true
    end
    
    def done
    #...
    end
end
```

3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

```ruby
# 1
diary = Diary.new
entry_1 = DiaryEntry.new("title 1", "contents 1")
diary.add(entry_1)
diary.all # => [entry_1]

# 2
diary = Diary.new
entry_1 = DiaryEntry.new("title 1", "contents 1")
entry_2 = DiaryEntry.new("title 2", "contents 1 2")
diary.add(entry_1)
diary.add(entry_2)
diary.reading_time(2, 2) # => entry_2

# 3
diary = Diary.new
task_1 = Todo.new("Walk the dog")
list_1 = TodoList.new
list_1.add(task_1)
list_1.all # [task_1]

# 4
diary = Diary.new
task_1 = Todo.new("Walk the dog")
task_2 = Todo.new("Walk the cat")
list_1 = TodoList.new
list_1.add(task_1)
list_1.add(task_2)
task_1.mark_done
list_1.complete # => [task_1]

# 5
diary = Diary.new
entry_1 = DiaryEntry.new("title 1", "contents 1")
entry_2 = DiaryEntry.new("title 2", "contents 1 2")
diary.add(entry_1)
diary.add(entry_2)
contact_1 = Contacts.new("Guille", 1234)
contact_2 = Contacts.new("Chris", 5678)
entry_1.add_contacts(contact_1)
entry_2.add_contacts(contact_2)
diary.list_of_contacts # => [contact_1, contact_2]

```

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

```ruby
# 1
entry = DiaryEntry.new("title 1", "contents 1")
entry.title # => "title 1"

entry = DiaryEntry.new("title 1", "contents 1")
entry.content # => "contents 1"

entry = DiaryEntry.new("title 1", "contents 1")
entry.count_words # => 2

contact = Contact.new("Guille", 1234)
contact.name # => "Guille"

contact = Contact.new("Guille", 1234)
contact.number # => 1234

```

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.


require 'diary'
require 'diary_entry'
require 'todo'
require 'todo_list'
require 'contact'


describe "integration" do 
    it "given an entry return the same entry" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title 1", "contents 1")
        diary.add(entry_1)
        expect(diary.all).to eq [entry_1]
    end

    it "given entries return the best one to read" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title 1", "contents 1")
        entry_2 = DiaryEntry.new("title 2", "contents 1 2")
        diary.add(entry_1)
        diary.add(entry_2)
        result = diary.reading_time(2, 2)
        expect(result).to eq entry_2
    end

    it "given a task return the same task" do
        diary = Diary.new
        task_1 = Todo.new("Walk the dog")
        todo_list = TodoList.new
        todo_list.add(task_1)
        result = todo_list.all
        expect(result).to eq [task_1]
    end

    it "given tasks, mark some as done and return them" do
        diary = Diary.new
        task_1 = Todo.new("Walk the dog")
        task_2 = Todo.new("Walk the cat")
        todo_list = TodoList.new
        todo_list.add(task_1)
        todo_list.add(task_2)
        task_1.mark_done
        result = todo_list.complete
        expect(result).to eq [task_1]
    end

    it "given a contact return them" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title 1", "contents 1")
        entry_2 = DiaryEntry.new("title 2", "contents 1 2")
        diary.add(entry_1)
        diary.add(entry_2)
        contact_1 = Contact.new("Guille", 1234)
        contact_2 = Contact.new("Chris", 5678)
        entry_1.add_contacts(contact_1)
        entry_2.add_contacts(contact_2)
        result = diary.list_of_contacts
        expect(result).to eq [contact_1, contact_2]
    end
end


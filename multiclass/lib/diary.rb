require_relative 'diary_entry'
require_relative 'todo_list'

class Diary
    def initialize
        @entry = []
    end

    def add(entries)
        @entry << entries
    end
        
    def all
        @entry
    end
    
    def reading_time(wpm, min)
        biggest_amount = wpm * min
        best_entry = @entry[0]
        @entry.each do |entries|
            if entries.count_words <= biggest_amount && entries.count_words > best_entry.count_words
                best_entry = entries
            end
        end
        return best_entry
    end
    
    def todo_list
        @todo_list
    end
        
    def list_of_contacts
        contacts = []
        @entry.each do |entries|
            contacts += entries.contacts
        end
        contacts
    end
end
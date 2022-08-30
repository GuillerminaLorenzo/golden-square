require_relative 'contact'

class DiaryEntry
    def initialize(title, contents) 
    @title = title
    @contents = contents
    @contacts = []
    end

    attr_accessor :title
    attr_accessor :contents
    attr_accessor :contacts

    def add_contacts(contact)
    @contacts << contact
    end

    def count_words
    @contents.split.length
    end
end

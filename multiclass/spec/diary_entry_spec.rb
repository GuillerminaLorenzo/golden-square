require 'diary_entry'

describe DiaryEntry do
    it "returns the title" do
        entry = DiaryEntry.new("title 1", "contents 1")
        expect(entry.title).to eq "title 1"  
    end

    it "returns the content" do
        entry = DiaryEntry.new("title 1", "contents 1")
        expect(entry.contents).to eq "contents 1"
    end

    it "counts the words in content and return how many there are" do
        entry = DiaryEntry.new("title 1", "contents 1")
        expect(entry.count_words).to eq 2
    end
end
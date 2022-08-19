require 'diary'
require 'diary_entry'

describe "integration" do
  context "when given entries" do
    it "list them out" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("title 1", "content1")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end

    it "list them out" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("title1", "content1")
      diary_entry_2 = DiaryEntry.new("title2", "content2")
      diary_entry_3 = DiaryEntry.new("title3", "content3")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      diary.add(diary_entry_3)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2, diary_entry_3]
    end

    describe "#count_words" do
      it "returns the number of words in all diary entries" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "content1")
        diary_entry_2 = DiaryEntry.new("title2", "content2")
        diary_entry_3 = DiaryEntry.new("title3", "content3")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        diary.add(diary_entry_3)
        expect(diary.count_words).to eq 3
      end
    end

    describe "#reading_time" do
      it "calculates how many words per minute" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "content 1") 
        diary_entry_2 = DiaryEntry.new("title2", "content 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 2
      end
    end

    describe "#find_best_entry_for_reading_time" do
      it "returns the best entry" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "content 1") 
        diary_entry_2 = DiaryEntry.new("title2", "content 2 3 4")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        result = diary.find_best_entry_for_reading_time(2, 2)
        expect(result).to eq diary_entry_2
      end

      it "returns the best entry" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "content 1") 
        diary_entry_2 = DiaryEntry.new("title2", "content 2 3 4")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        result = diary.find_best_entry_for_reading_time(2, 3)
        expect(result).to eq diary_entry_2
      end

      it "returns the best entry" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("title1", "content 1") 
        diary_entry_2 = DiaryEntry.new("title2", "content 2 3 ")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry_1
      end
    end
  end
end
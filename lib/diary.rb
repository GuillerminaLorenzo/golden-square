class Diary
  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.sum(&:count_words)
    # return @entries.map do |entry|
    #   entry.count_words
    # end
  end

  def reading_time(wpm) 
    (self.count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    biggest_amount = wpm * minutes
    best_entry = @entries[0]
    @entries.each do |entry|
      if entry.count_words <= biggest_amount && entry.count_words > best_entry.count_words
      best_entry = entry 
      end
    end
    return best_entry
  end
end
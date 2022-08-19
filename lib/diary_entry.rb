class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @book_mark = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm) 
    (self.count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    amount_of_words = wpm * minutes
    words = @contents.split(" ")
    if @book_mark >= self.count_words 
      @book_mark = 0
      chunk = words[@book_mark, amount_of_words]
      @book_mark += amount_of_words
    else
      chunk = words[@book_mark, amount_of_words]
      @book_mark += amount_of_words
    end
    return chunk.join(" ")
  end
end
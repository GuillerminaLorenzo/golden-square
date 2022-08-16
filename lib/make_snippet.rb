def make_snippet(str)
  words = str.split(" ")
  if words.length <= 5
    return str
  elsif words.length > 5    
    return first_five_words(words)
  end
end

def first_five_words(arrayofwords)
  word = ""
  for i in 0..4 do
    word += arrayofwords[i] + " "
  end
  return word = word.strip + "..."
end
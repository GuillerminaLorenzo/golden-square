def check_grammar(text)
  fail "Not a sentence." if text.empty?
  text[0] == text[0].capitalize && text[text.length-1] == "." ? true : false
end
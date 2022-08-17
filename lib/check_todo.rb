def check_todo(text)
  fail "No string included." if !text.is_a? String
  fail "No string included." if text.empty?
  text.include?("#TODO") ? true : false
end
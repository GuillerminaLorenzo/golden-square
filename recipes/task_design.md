{{Grammar}} Method Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

>As a user
>So that I can keep track of my tasks
>I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

```ruby
it_includes = check_todo(text)

# * text is a string
# * it_includes is a boolean depending on whether it includes the string

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# 1
check_todo("")
# fail "No string included."

# 2
check_todo("Hello #TODO")
# => true

# 3
check_todo("hello, world.")
# => false

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
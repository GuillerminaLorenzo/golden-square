As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


# Class name = Music

# Initialize method

@music_list = []

# Methods

* add(song) - push songs to the array to store them 
          - song = string ("Umbrella")
* list - to return the final list as a string

# Examples

# 1
music = Music.new
music.add("1")
music.add("2")
music.add("3")
music.list # => "1, 2, 3"

# 2
music = Music.new
music.add("")
music.list # => ""


# 3
music = Music.new
music.add("")
music.list # => ""
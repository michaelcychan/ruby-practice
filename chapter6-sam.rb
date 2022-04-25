#!/usr/bin/env ruby
=begin
The user sees a greeting, which asks them to enter their name.
The user enters their name.
If the user's name begins with 'S', the program shouts the user's name back at them.
If the user's name begins with any other letter, the program just says 'Hi, ' plus their name.
=end


puts "Hi! What\'s your name?"

usrName = gets.chomp

(usrName.match? /^[Ss]/) ? (puts usrName.capitalize) :  (puts "Hello, #{usrName.capitalize}!")



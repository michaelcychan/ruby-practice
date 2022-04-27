#!/usr/bin/env ruby

word = {
    "bear" => "a creature that fishes in the river for salmon.",
    "river" => "a body of water that contains salmon, and sometimes bears.",
    "salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
}

check = "bear"

puts "Please enter a word you want to check: (bear, river, or salmon)"
check = gets.chomp.downcase
puts "#{check} means #{word[check]}"

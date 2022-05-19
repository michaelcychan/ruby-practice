#!/usr/bin/env ruby

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

print players
print "\n\n"

player_bysport = Hash.new

players.each do |person|
    if player_bysport[person[:sport].to_sym] == nil
        player_bysport[person[:sport].to_sym] = []
    end
    player_bysport[person[:sport].to_sym].push(person[:name])
end

print player_bysport
print "\n\n"

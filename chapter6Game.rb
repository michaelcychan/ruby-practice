#!/usr/bin/env ruby
=begin
The user is told they're facing forward and can type 'forward', 'left', or 'right'.
If the user enters 'right', they die (goblin).
If the user enters 'left', they die (werewolf).
If the user enters 'forward', they're told they live, and can move again.
If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.
If the user enters 'right', they die (goblin).
If the user enters 'left', they die (werewolf).
If the user enters 'forward', they're told they won and the game exits.
If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.
=end 

usrLife = 1
gameWin = 0
step = 0
while usrLife == 1 && gameWin == 0 && step < 2 do
  puts "Please enter your direction: right, left, or forward"
  usrInput = gets.chomp
  if usrInput == "right"
    usrLife -= 1
    puts "You are killed by a goblin!"
  elsif usrInput == "left"
    usrLife -= 1
    puts "You are killed by a werewolf!"
  elsif usrInput == "forward"
    step += 1
    puts "You are alive!"
  else
    puts "Invalid input, please choose again!"
  end  
end

gameWin = 1 if usrLife > 0
(gameWin == 1) ? (puts "Congratulations! You Win!") : (puts "You lose!")


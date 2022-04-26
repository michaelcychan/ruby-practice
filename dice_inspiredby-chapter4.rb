=begin
If I roll higher than my opponent, I win.
Write the dice game as above.
Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)
=end

def throwdice(side)
    return (rand(side) + 1)
end

user_input = ""
while !(user_input.match? /\d/) do
    puts "How many players?"
    user_input = gets.chomp
end
num_of_player = user_input.to_i

user_input = ""
while !(user_input.match? /\d/) do
    puts "How many dice per player?"
    user_input = gets.chomp
end
num_of_dice = user_input.to_i

user_input = ""
while !(user_input.match? /\d/) do
    puts "How many round to win?"
    user_input = gets.chomp
end
num_of_round = user_input.to_i

#print num_of_player.to_s + "\n" + num_of_dice.to_s + "\n" + num_of_round.to_s

dice_result = Array.new(num_of_round){Array.new(num_of_player){Array.new(num_of_dice)}}
sum = Array.new(num_of_player){0}

dice_result.each {|nr|
    nr.each{|np|
        np.map! {|nd|
            nd = throwdice(6)
        }
    }
}

#print dice_result
for i in 1..num_of_round do
    print "Round #{i} results:\n"
    for j in 1 .. num_of_player do
        print "Round #{i} result of Player #{j}:\n"
        print dice_result[i-1][j-1]
        print "\nThe total sum of this round is:\n"
        print dice_result[i-1][j-1].sum
        print "\n"
        #sum[i-1] += dice_result[i-1][j-1].sum
    end
    #print "The winner of Round #{i} is Player XXX. The sum of this throw is #{dice_result[i-1][j-1].sum}"
end

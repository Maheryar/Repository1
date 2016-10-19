system "clear"
puts "    "
puts "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *"
puts "*                        G U E S S I N G   G A M E                        *"

puts "*                         Developer: Tahir Naqvi                          *"
puts "*                            Dated: 06APR2015                             *"
puts "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *"

max_number = 99
max_user_attempts = 10
attempts_counter = 0
game_lose_indicator = 0

puts "\nPlease notice the following: "
puts "1) I, the computer, would generate a random number between 1 " + max_number.to_s + "."
puts "2) You, the player must guess that number . . . .  however . . . you can"
puts "   make only " + max_user_attempts.to_s + " guesses before you lose."
puts "    "
puts "Press ENTER to continue . . . "
gets
puts "    "

num= rand(1..max_number)
puts "A random number has been generated between 1 and " + max_number.to_s + "."

puts "\nMake your guess: "
number_guessed = gets.to_i
attempts_counter+=1

while number_guessed != num

    if attempts_counter <= max_user_attempts

        if number_guessed > num
            print "That's too high :( "
        elsif number_guessed < num
            print "That's too low :(  "
        end

    end

    if attempts_counter >= max_user_attempts
        game_lose_indicator = 1
        puts "Sorry! you have attempted all re-tries . . . You lost the game ! "
        break
    end

    puts "\nGuess again ... "
    number_guessed = gets.to_i
    attempts_counter+=1

end


if game_lose_indicator == 0
    puts "Correct! You have won the game ...."
    puts "You guessed the random number in " + attempts_counter.to_s + " trie(s)!"
end
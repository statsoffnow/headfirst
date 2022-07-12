=begin
    Get my number game.
    Random number picker for people waiting in lines.
    Written and created by Karolina Koziara
=end

puts "Welcome to 'Get My Number game!'"
print "What's your name? "

input = gets

#puts "Welcome #{input}!"
=begin
puts input.inspect #inspect the element

p input # p --> puts + inspect element
=end

name = input.chomp

puts "Welcome #{name.capitalize}!"

#we now need to get a random name
#random(...) gives us number between 0-99, so we need to add 1


puts "I've got a random number bewteen 1 and 100"
puts "Can you guess?"
target = rand(100) + 1

num_guess = 0
guessed_it = false

until num_guess == 10 || guessed_it

#remaining_guess = 10 - num_guess
    puts "You've got #{10 - num_guess} guesses left. "

    puts "Make a guess:"
    guess = gets.to_i
    num_guess += 1

    #We need to compare the player's guess with the target:
    if guess < target
        puts "Oh no! Your guess was too LOW"
    elsif guess > target
        puts "Oh no! Your guess was too HIGH"
    elsif guess == target
        puts "Good job #{name.capitalize}!"
        puts "You guessed the number in #{num_guess} attempts!"
        guessed_it = true
    end

end
#If the player runs out of turns, give the proper message:
unless guessed_it
puts "Sorry.. This time you did not guess :( The right number was #{target}"
end

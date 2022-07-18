=begin
Fuzzy Friends Animals want to create a storybook. 
They need to bind animal type, sound and more characteristics.
=end

#This is the code they already have:
def talk(animal_type, name)
    if animal_type == "bird"
        puts "#{name} says Chirp! Chirp!"
    elsif animal_type == "dog"
        puts "#{name} says Bark!"
    elsif animal_type == "cat"
        puts "#{name} says Moew!"
    end
end

def move(animal_type, name, destination)
    if animal_type == "bird"
        puts "#{name} flies to the #{destination}."
    elsif animal_type == "cat"
        puts "#{name} runs to the #{destination}."
    elsif animal_type == "dog"
        puts "#{name} runs to the #{destination}."
    end
end

def report_age(name, age)
    puts "#{name} is #{age} years old. "
end

#Let's try how it works!
move("bird", "Whistler", "tree") 
talk("dog", "Sadie") 
talk("bird", "Whistler") 
move("cat", "Smudge", "house") 
report_age("Tim", 6)

=begin
To add many more animals it would be easier to add classes and objects, 
instead of building infinite if..else.. loops.
=end

#We're going to create a class for DOGs.
#A class name must begin with a CAPITAL letter (!!!)

class Dog
    def talk
        puts "Bark!"
    end

    def move(destination)
        puts "Running to the #{destination}."
    end
end

fido = Dog.new 
rex = Dog.new

fido.talk
rex.move("home")
fido.move("park")



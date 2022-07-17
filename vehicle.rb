=begin
Methods starts with 
def ACTION (PARAMETERS)
    The body of method (eg print...)
end
Methods must close with 'end' statement    
=end

# method to accelerating in the vehicle test app
def accelerate #this methods takes no paremeters!
    puts "Stepping on the gas"
    puts "Speeding up!"
end

# method to use horn
def sound_horn
    puts "Pressing the horn button"
    puts "Beep! Beep!"
end

# method to turn on the lights (this method involves using one parameter)
def use_headlights (brightnes) #parameter is put in the parenthesis
    puts "Turning on #{brightnes} headlights!"
    puts "Wath out for deer!"
end


#Make calls to the methods we created
accelerate
sound_horn
use_headlights ("high-beam")

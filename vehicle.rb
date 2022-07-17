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

#If you use the same parameter for most of the time, you can set the default value.

def order_soda (flavor , size = "medium" , quantity = 1)
    if quantity == 1
        plural = "soda"
    else
        plural = "sodas"
    end
    puts "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
end

#Now you can check how it work!
order_soda ("lime")
order_soda ("lemon")
order_soda ("orange")


#Try to make a headlight argument optional

def headlight (brightness = "low-beam")
    puts "Turning on the #{brightness} headlights."
    puts "Watch out for deer!"
end

#call method
headlight
headlight("high-beam")


=begin
Now we need to execute the method that would be able to show the user
the mileage of the vehicle's last trip as well as lifetime mileage.    
=end

#In order to have those two values at once, we need to use the RETURN method.

#The first step is to write the basic method:
def mileage(miles_driven, gas_used)
    return miles_driven/gas_used
end

trip_mileage = mileage(370, 12)
puts "You got #{trip_mileage} on this trip!"

lifetime_mileage = mileage(1673, 361)
puts "This car averages #{lifetime_mileage} MPG."

#What if we have a brand new car?

def new_mileage(full_mileage, fuel_used)
    if fuel_used == 0
        return 0.0
    end
    full_mileage/fuel_used
end

puts "This car has exactly #{new_mileage(0,0)} MPG!"


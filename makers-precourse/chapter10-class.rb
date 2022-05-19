!# usr/bin/env ruby

class Object
    def average(scores)
        total = 0
        scores.each do |each|
            total += each
        end
    total.to_f / scores.length
    end
end

class Array 
    def average
        total = 0
        self.each do |each|
            total += each
        end
    total.to_f / self.length
    end
end

class String
    def say_hi
        puts "Hi!"
    end
    
    def say_hi_to
        "Hi, #{self}!"
    end
    
    def shoutify
        self.upcase
    end
end

class Car
    def initialize(wheel)
        @wheel = wheel
    end
    
    
    def vroom
        "Vroom Vroom Vroooooooom!"
    end
    
    def colour=(colour)
        @colour = colour
        return colour
    end
    
    def look
        puts "You see a " + @colour + " car, which has #{@wheel.to_s} wheels."
    end
end

class Person
    def give_a_name(name)
        @my_name = name
    end
    
    def introduce
        return "Hello, I'm " + @my_name
    end
end

class Robot
    def leg(num_leg)
        @leg_number = num_leg
    end
    
    def addleg
        @leg_number += 1
    end
    
    def walk
        return "I am walking with my #{@leg_number.to_s} legs."
    end
end
    

woman = Person.new
woman.give_a_name("Anna")
woman.introduce

=begin
jazz = Car.new
yaris = Car.new

puts jazz.vroom
puts yaris.vroom

jazz.colour = "grey"
yaris.colour = "blue"

puts jazz.look
puts yaris.look
=end
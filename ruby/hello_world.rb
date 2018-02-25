#!/usr/bin/env ruby

## From Ruby in Twenty Minutes
## https://www.ruby-lang.org/en/documentation/quickstart/

puts "Hello World"

def hi name = "World"
    puts "Hi #{name}!"
end

hi
hi nil
hi "Matz"

class Greeter
    def initialize(name = "World")
        @name = name
    end
    def say_hi
        puts "Hi #{@name}!"
    end
    def say_bye
        puts "Bye #{@name}, come back soon."
    end
end

world_greeter = Greeter.new()

pat_greeter = Greeter.new("Pat")

world_greeter.say_hi
world_greeter.say_bye
pat_greeter.say_hi
pat_greeter.say_bye


class Greeter
    attr_accessor :name
end

puts greeter = Greeter.new("Andy")
puts greeter.respond_to? "name"
puts greeter.respond_to? "name="

puts greeter.name

greeter.name= "Betty"
puts greeter.say_hi

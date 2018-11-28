#!/usr/bin/env ruby

puts "Hello world!"

puts Math.sqrt(9)

def h(name="World")
  puts "Hello #{name.capitalize}!"
end

h("sania")
h()



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

class Greeter
  attr_accessor :name
end


g = Greeter.new("Sania")
g.say_hi
g.say_bye

puts Greeter.instance_methods(false)
puts g.respond_to?("name")
puts g.respond_to?("say_hi")
puts g.respond_to?("to_s")
puts g.name
g.name = "Tania"
g.say_hi
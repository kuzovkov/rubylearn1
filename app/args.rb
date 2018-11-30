#!/usr/bin/env ruby

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "Give me a number: "
number = $stdin.gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = $stdin.gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."
#!/usr/bin/env ruby

filename = ARGV.first
if filename == nil
  puts "Usage: files.rb <filename>"
  exit
end

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
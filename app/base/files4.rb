#!/usr/bin/env ruby

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?



if from_file == nil or not File.exists?(from_file)
  puts "Usage: files4.rb <infile> <outfile>"
  exit
end
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

if to_file == nil
  puts "Usage: files4.rb <infile> <outfile>"
  exit
end
out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close
#!/usr/bin/env ruby

filename = ARGV.first

config = IO.read(filename)
puts config.class    #=> String
$stdin = File.open('example.txt')
$stderr = File.open('errors.txt', 'a')
puts 'Очень важные данные,'
puts 'которые будут сохранены в файл'


string = File.open(filename, 'r'){ |file| file.read }
File.open('output-data.txt', 'w'){ |file| file.write string }
File.open('output-data.txt', 'a'){ |file| file.puts  string }
#Замыкание метода .open (то есть фигурные скобки) нужен для того, чтобы при выходе из замыкания автоматически осуществлять закрытие файла.

File.delete("example.txt")
raise 'Принудительно вызываем ошибку'

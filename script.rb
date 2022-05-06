#!/usr/bin/ruby

require 'colorize'
require './lib/anagrams.rb'

puts 'Welcome to my Ruby based Anagram checker!'
sleep 1
puts 'The rules are simple: You will get two prompts.'
sleep 1
puts 'For each prompt you just enter either a word or a sentance.'
sleep 1
puts 'This handy little script will tell you whether or not they are anagrams.'
sleep 1
puts 'Bonus points if you find an antigram!'
sleep 1
puts "What is your first word or sentance? Use all the punctuation you want, really test it out."
input1 = gets.chomp
puts "What is your next word or sentance?"
input2 = gets.chomp
anagram_check = Anagrams.new(input1, input2)
output = anagram_check.compare
print "C"
sleep 0.2
print "a"
sleep 0.2
print "l"
sleep 0.2
print "c"
sleep 0.2
print "u"
sleep 0.2
print "l"
sleep 0.2
print "a"
sleep 0.2
print "t"
sleep 0.2
print "i"
sleep 0.2
print "n"
sleep 0.2
print "g"
sleep 0.5
print "."
sleep 0.5
print "."
sleep 0.5
puts "."
sleep 0.5
if output == 'Oh hey, an anagram!'
  puts output.colorize(:green).on_black
elsif output == 'Looks like you found an antigram!'
  puts output.colorize(:light_blue).on_black
elsif output == 'No anagram for you'
  puts output.colorize(:light_magenta).on_black
else
  puts output.colorize(:red).on_black
end


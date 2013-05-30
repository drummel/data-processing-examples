#!/usr/bin/env ruby

running_total = 0
last_word = nil

ARGF.each do |line|
  line.chomp!

  (word, count) = line.split /\t/

  unless word == last_word or last_word.nil?
    puts "#{last_word}\t#{running_total}"
    last_word = word
    running_total = 0
  end

  last_word = word unless last_word
  running_total += Integer(count)
end

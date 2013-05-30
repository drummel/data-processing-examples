#!/usr/bin/env ruby

ARGF.each do |line|
  line.chomp!

  line.split(/\s/).each do |word|
    puts "#{word}\t1"
  end
end

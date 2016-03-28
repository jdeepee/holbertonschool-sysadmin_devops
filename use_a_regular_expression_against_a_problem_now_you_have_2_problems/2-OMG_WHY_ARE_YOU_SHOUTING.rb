#!/usr/bin/ruby
arg = ARGV[0].dup
out = arg.gsub!(/[^A-Z\!]/, '')
puts out 
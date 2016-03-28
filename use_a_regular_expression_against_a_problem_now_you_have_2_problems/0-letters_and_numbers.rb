#!/usr/bin/ruby
arg = ARGV[0].dup
out = arg.gsub!(/[^0-9a-zA-Z]/, '')
puts out
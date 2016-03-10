#!/usr/bin/ruby
v1 = ARGV[0]
Dir.entries(v1).each do |file|
	puts file if file.match("bread")
end
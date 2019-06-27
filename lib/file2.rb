#!/usr/bin/env ruby
require 'find'
require 'pathname'
puts "Hello user, Please Input the folder name"
name = gets.chomp
def folderSize(name)
	dirsize = 0
	Find.find(name) do |f| dirsize += File.stat(f).size end
	dirsize
	puts dirsize
end
folderSize(name)
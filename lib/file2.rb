#!/usr/bin/env ruby
require 'find'
require 'pathname'
def folderSize()
	puts "Hello user, Please Input the folder name"
	name = gets.chomp
	dirsize = 0
	Find.find(name) do |f| dirsize += File.stat(f).size end
	dirsize
	puts dirsize
end
folderSize()
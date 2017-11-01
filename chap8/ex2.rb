#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#table of contents using arrays


chapters = ["Chapter 1", "Chapter 2", "Chapter 3"]
titles = ["Getting Started", "Numbers", "Letters"]
pages = ["Page 1", "Page 9", "Page 13"]

line_width = 50
puts "Table of Contents".center(line_width)


puts chapters[0].ljust(line_width/2) + titles[0].ljust(line_width/2) + pages[0].rjust((line_width/2))
puts chapters[1].ljust(line_width/2) + titles[1].ljust(line_width/2) + pages[1].rjust((line_width/2))
puts chapters[2].ljust(line_width/2) + titles[2].ljust(line_width/2) + pages[2].rjust((line_width/2))


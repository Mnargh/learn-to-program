#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

birthdate = Time.mktime(1993, 9, 25, 7, 30)
bil_secs = birthdate + 10**9

puts birthdate
puts bil_secs
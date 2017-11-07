#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby
def remove_char(s)
  chars = s.split
  chars.delete_at(chars.index(1))
  chars.delete_at(chars.index(-1))
  chars.join
end

remove_char("eloquent")
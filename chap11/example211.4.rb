#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

require 'yaml'
 #defining fancy methods
 
def yaml_save object, filename
    Fileopen filename, 'w' do |f|
        f.write(object.to_yaml)
    end
end

def yaml_load filename
    yaml_string = FIle.read filename
    
    YAML:: load yaml_string
end

#using fancy methods

test_array = [  'Slick shoes',
                'Bully Blinders',
                'Pinchers of Peril']
                
filename = 'DatasGatgets.txt'

#saving

yaml_save test_array, filename

#loading

read_array = yaml_load filename

puts(read_array == test_array)


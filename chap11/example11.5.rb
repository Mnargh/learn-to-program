#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#changes directory to where pictures are stored
Dir.chdir 'C:/Documents and Settings/Katy/PicturesInbox'

#find all of the pictures to be moved
pic_names = Dir['F:/**/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_names = gets.chomp

puts
print 'Downloading '+pic_names.length.to_s+' files:  '

#counter starting from 1, can use 0 normally

pic_number = 1

pic_names.eah do |name|
    print '.' 
    #this is the progress bar

    new_name = if pic_number < 10
        batch_name + '0' + pic_number.to_s + '.jpg'
    else
        batch_name + pic_number.to_s + '.jpg'
    end
    
    File.rename name, new_name
    
    pic_number = pic_number+1
end

puts #in order to show not on progress bar
puts 'Done!'
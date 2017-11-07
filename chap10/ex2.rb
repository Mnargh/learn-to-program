#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

#method for sort

def sort(some_array)
    recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
    
    #go to unsorted array, find smallest word
    smallest = unsorted_array.inject {|memo, word| memo.downcase < word.downcase ? memo : word }
    
    #old code
    #smallest = unsorted_array.min
    
     #push smallest to the sorted array
    sorted_array << smallest
    #need to delete smallest word as push does not remove it from the unsorted array just adds to the sorted array
    unsorted_array.delete_at(unsorted_array.index(smallest))
    
    #old code
    #unsorted_array.delete_if {|word| word == unsorted_array.min}
    
   
   #check if still unsorted words left
    if unsorted_array.length > 0
        recursive_sort(unsorted_array, sorted_array)
    else 
        sorted_array
    end

end

puts sort(["Apple", "Orange", "Banana", "Pear", "Peach"])
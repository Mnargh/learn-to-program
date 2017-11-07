#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

=begin
 height method that returns its height and a one_year_passes method that, 
 when called, ages the tree one year. Each year the tree grows taller 
 (however much you think an orange tree should grow in a year), 
 and after some number of years (again, your call) the tree should die.
 For the ﬁrst few years, it should not produce fruit, but after a while it should,
 and I guess that older trees produce more each year than younger trees...
 whatever you think makes the most sense. And, of course, you should be able to count_the_oranges 
 (which returns the number of oranges on the tree) and pick_an_orange 
 (which reduces the @orange_count by 1 and returns a string telling you how delicious the orange was,
 or else it just tells you that there are no more oranges to pick this year). Make sure any oranges you
 don’t pick one year fall off before the next year.

=end
class OrangeTree
    def initialize
        @age = 0
        @height = 0
        @orange_count = 0
        puts "You tree begins its life"
        
    end
    
    def height
        puts "The tree is #{@height}cm tall!"
    end
    
    def one_year_passes
        @age += 1
        
        if @age <= 10
            @height += 100
        elsif @age >=10 
            @height += 50
        end
        
        bear_fruit
        
        
        
        if @age > 50
            tree_dies
        end
        
    end
    
    def bear_fruit
        if @age >= 5
            @orange_count = 15
        elsif @age >= 10
            @orange_count = 30
        elsif @age>= 20
            @orange_count = 50
        else 
            @orange_count = 0
        end
    end
    
    def tree_dies
        puts "The tree died of old age"
        exit
    end
    
    def count_oranges
        puts "There are #{@orange_count} oranges left on the tree."
    end
    
    def pick_orange
        if @orange_count == 0
            puts "There are no more oranges left on the tree this year!"
        else    @orange_count -= 1
                puts "You picked a delicious orange!"
        end
    end
    
    def oranges_fall
        @orange_count = 0
    end
    
end

orange = OrangeTree.new 
orange.height
5.times{orange.one_year_passes}
orange.height
orange.count_oranges
orange.pick_orange
orange.count_oranges
orange.pick_orange
45.times{orange.one_year_passes}
#!/usr/local/rvm/rubies/ruby-2.3.4/bin/ruby

class Dragon
    def initialize name 
        @name = name
        @asleep = false 
        @stuff_in_belly = 10 # He' s full. 
        @stuff_in_intestine = 0 # He doesn' t need to go.
        @angry = false

        puts @name + ' is born.' 
    end

    def feed 
        puts ' You feed ' + @name + ' .' 
        @stuff_in_belly = 10 
        passage_of_time
    end
    
    def walk 
        puts ' You walk ' + @name + ' .' 
        @stuff_in_intestine = 0 
        passage_of_time 
    end

    def put_to_bed 
        puts ' You put ' + @name + ' to bed.'
        @asleep = true
        3.times do
            if @asleep
                passage_of_time
            end
            if @asleep
                puts @name + " snores, filling the room with smoke."
            end
        end
        if @asleep
            @asleep = false
            puts @name + " wakes up slowly"
        end
    end
    
    def toss
        puts "You toss " + @name + " up into the air"
        puts "He giggles, which singes your eyebrows."
        passage_of_time
    end
    
    def rock
        puts "You rock " + @name + " gently"
        @asleep = true
        puts "He briefly doezes off..."
        passage_of_time
        if @asleep
            @asleep = false
            puts "... but wakes up when you stop"
        end
    end
    
    private
    # "private" means that the methods defined here are 
    # methods internal to the object. (You can feed your 
    # dragon, but you can' t ask him whether he' s hungry.)

    def hungry?
    # Method names can end with "?". 
    # Usually, we do this only if the method 
    # returns true or false, like this:
        @stuff_in_belly <= 2 
    end
    
    def poopy? 
        @stuff_in_intestine >= 8 
    end
    
    def passage_of_time
        if @stuff_in_belly > 0
            #move food from belly to intestine
            @stuff_in_belly = @stuff_in_belly - 1 
            @stuff_in_intestine = @stuff_in_intestine + 1 
        else #dragon is starving
            if @asleep
                @asleep = false
                puts "He wakes up suddenly"
            end
        puts @name + ' is starving! In desperation, he ate YOU!' 
        @angry = true
        exit # This quits the program.
        end

        if @stuff_in_intestine >= 10 
            @stuff_in_intestine = 0 
            puts ' Whoops! ' + @name + ' had an accident...' 
        end
        
        if hungry?
            if @asleep
                @asleep= false
                puts "He wakes up suddenly!"
            end
            puts @name + ' \' s stomach grumbles...' 
        end
        
        if poopy?
            if @asleep 
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts @name + " does the potty dance..."
        end
    end 
    
end

norbert = Dragon.new("Norbert")
while true 
    puts "What do you do with your dragon?"
    command = gets.chomp
    case command.downcase
        when "feed"
            norbert.feed
        when "walk"
            norbert.walk
        when "toss"
            norbert.toss
        when "put to bed"
            norbert.put_to_bed
        when "rock"
            norbert.rock
    else
        puts "Please choose from one of feed, walk, toss, put to bed or rock"
    end
end


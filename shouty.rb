def shouty
    print "Please enter a name"
    name = gets.chomp 
    if name.start_with?("s")
         name.upcase!
        puts name 
    else 
        puts "hi #{name}"
    end 
end 

shouty 

=begin 
-get name 
-check to see if name starts with s 
-if it does capitalise 
-otherwise puts hi + name 
end 

=end 


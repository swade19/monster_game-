=begin 
-tell user what moves they can do
    -get input 
     if left, get eaten by werewolf 
    - if right they die by goblin 
    if they go forward they live 
    - go forward twice to win 
=end 


def game
puts "Welcome to monster runner. You need to escape the goblins and werewolfs. You can choose to go forward, left or right. Please enter what move you would like to make "
move = gets.chomp 
what_move(move)

end 

def get_move #moved to top as it wasnt visible underneath the method.
    move = gets.chomp 
    what_move(move)
end 

def what_move(move)
    lives = 1 
    case 
    when move =="forward"
        puts "you lived, choose another move"
        if lives ==2 
            puts "Congratulations, you win!"
        else 
            lives +=1 
            puts lives 
            get_move
        end 
        
    when  move =="left"
        puts "you were eaten by a werewolf, you died."
    when move =="right"
        puts "you were attacked by a goblin, you died."
    else 
        puts "I didn't catch that - enter forward, left or right"
    end 
end 
game 


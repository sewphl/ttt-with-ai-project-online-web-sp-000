class MyCLI
    
    def initialize
        welcome
    end
    
    def welcome
        puts "Welcome!"
        puts "What kind of game do you want to play?"
        puts "Enter 0 for computer-computer game."
        puts "Enter 1 for a computer-human game."
        puts "Enter 2 for a human-human game."
        gameType = gets.strip.to_i
        if gameType == 0
            Game.new(Players::Computer.new("X"),Players::Computer.new("O")).play
            elsif gameType == 2
            Game.new.play
            else
            puts "Do you want to be X or O?"
            thisPlayer = gets.strip.downcase
            if thisPlayer == "x"
                Game.new(player_1 = Players::Human.new("X"), player_2 = Players::Computer.new("O")).play
                elsif thisPlayer == "o"
                Game.new(player_1 = Players::Computer.new("X"), player_2 = Players::Human.new("O")).play
            end
        end
    end
    
end
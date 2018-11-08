class MyCLI

    def initialize
        welcome
        playAgain
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

    def playAgain
      play_again = ""
  until play_again.include?("yes") || play_again.include?("no")
    puts "Would you like to play again?"
    play_again = gets.strip.downcase
    puts "Invalid answer. Please enter 'yes' or 'no'." unless play_again.include?("yes") || play_again.include?("no")
  end
  TicTacToe.new if play_again.include?("yes")
end

end

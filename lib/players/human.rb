module Players
    class Human < Player
        def move(board)
            #human, please enter a move via CLI
            mymove = gets.chomp
            mymove
        end
    end
end

require_relative './lib/player.rb'
require_relative './lib/check_board.rb'
require_relative './lib/board.rb'

class Game 

  def check_attempts (attempts)
        if attempts==9 
            return true 
        else 
            return false
        end
  end
  def play_game 

    board=Board.new 
    board.draw_board

    attempts=0 

    winner=false  
    puts "quelle est le nom du jouer 1?"
    name1=gets.chomp 
    player1=Player.new("x",name1)

    puts "quelle est le nom du jouer 2?"
    name2=gets.chomp
    player2=Player.new("o",name2)

    check_board=CheckBoard.new

    while winner==false 
        player1.choose_pos(board)
        attempts+=1 
        if check_attempts(attempts) 
            puts "TIE GAME"
            break
        end
        if check_board.check_combo(board.board,"x") ==true 
            puts "#{player1.name} a gagné!" 
            winner=true
           
            break
        end
        player2.choose_pos(board) 
        attempts+=1 
        if check_attempts(attempts)  
            puts "TIE GAME"
            break
        end
        if check_board.check_combo(board.board,"o") ==true 
            puts "#{player2.name} a gagné!"
            winner=true 
            
            break
        end
       

       
        puts "GET ATTEMPTS"
        puts attempts
        

    end

  end
end

game=Game.new 

game.play_game
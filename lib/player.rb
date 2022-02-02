
class Player 
    attr_accessor :name 
    attr_accessor :symbol 

    def initialize(symbol,name)
        @name=name
        @symbol=symbol
    end 

    def choose_pos (board)
       

        puts "#{@name} est en trien de jouer,quelle emplacement voulez vous choisir" 
        position=gets.chomp 
        case_found=false

        board.board.each do |boards|
            boards.each do |value|
                if value[:case]==position 
                    case_found=true
                    if value[:value]==""
                        value[:value]=@symbol
                    else 
                        puts "cas deja rempli"
                        choose_pos(board)
                    end

                
                end 

                
            end 

        end

        if case_found ==false 
            puts "viellez choisir une valuer correspondant au tableau"
            choose_pos(board)
        end

        board.modify_board(board.board)
        board.draw_board
        
    end
end 


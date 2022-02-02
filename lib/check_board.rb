class CheckBoard 
    def check_combo (board,symbol)
        combo_found=false
        if board[0][0][:value]==symbol && board[0][1][:value]==symbol && board[0][2][:value]==symbol
            combo_found=true
        end 

        if board[1][0][:value]==symbol && board[1][1][:value]==symbol && board[1][2][:value]==symbol 
            combo_found=true
        end 

        if board[2][0][:value]==symbol && board[2][1][:value]==symbol && board[2][2][:value]==symbol 
            combo_found=true
        end

        if board[0][0][:value]==symbol && board[1][1][:value]==symbol && board[2][2][:value]==symbol
            combo_found=true
        end 

        if board[0][0][:value]==symbol && board[1][0][:value]==symbol && board[2][0][:value]==symbol
            combo_found=true
        end 

        if board[0][1][:value]==symbol && board[1][1][:value]==symbol && board[2][1][:value]==symbol 
            combo_found=true
        end 

        if board[0][2][:value]==symbol && board[1][2][:value]==symbol && board[2][2][:value]==symbol
            combo_found=true
        end 

        if board[0][2][:value]==symbol && board[1][1][:value]==symbol && board[2][0][:value]==symbol
            combo_found=true
        end 

        return combo_found
    end
end
class Board 
    attr_accessor :board
    def initialize
        @board=[
            [
                {case:'a1',value:""},
                {case:'a2',value:""},
                {case:'a3',value:""}
            ],

            [
                {case:'b1',value:""},
                {case:'b2',value:""},
                {case:'b3',value:""}
            ],
            [
                {case:"c1",value:""},
                {case:"c2",value:""},
                {case:"c3",value:""}
            ]
        ]
    end 

   
    def modify_board(board)
        @board=board
    end 

    def draw_board
        @board.each_with_index do |section,index| 

            puts @board[index][0][:case]+" "+@board[index][1][:case]+" "+@board[index][2][:case]
            puts @board[index][0][:value]+" "+" "+" "+@board[index][1][:value]+" "+" "+" "+@board[index][2][:value]
           

        end

    end

end


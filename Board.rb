require_relative 'File_reader.rb'
require_relative 'piece.rb'
require 'pry'
class Board
	def initialize(file_reader)
		@file_reader = file_reader

		# @board = Array.new(8) { Array.new(8) }
		@board = []
		get_board
		# print_board
		# create_pieces
		get_piece_from_move()
	end

	def get_board
		@board = @file_reader.read_board(@board)
	end
	def create_pieces
		@board.each do |x|
    			x.each do |y|
    				if(y == "wR" || y == "bR")
    					puts y
    				end
    			end
			end
	end
	def print_board
			@board.each do |x|
    			x.each do |y|
					print " #{y}"
    			end
    		puts ""
			end
	end
	# Board
	# a8 b8 c8 d8 e8 f8 g8 h8
	# a7 b7 c7 d7 e7 f7 g7 h7
	# a6 b6 c6 d6 e6 f6 g6 h6
	# a5 b5 c5 d5 e5 f5 g5 h5
	# a4 b4 c4 d4 e4 f4 g4 h4
	# a3 b3 c3 d3 e3 f3 g3 h3
	# a2 b2 c2 d2 e2 f2 g2 h2
	# a1 b1 c1 d1 e1 f1 g1 h1
	#a2 - a3
	#[6-0] - [5-0] 
	
	def mapping(move)
	mapping = {
	   "a8" => [0, 0], "b8" => [0, 1], "c8" => [0, 2], "d8" => [0, 3], "e8" => [0, 4], "f8" => [0, 5], "g8" => [0, 6], "h8" => [0, 7],
       "a7" => [1, 0], "b7" => [1, 1], "c7" => [1, 2], "d7" => [1, 3], "e7" => [1, 4], "f7" => [1, 5], "g7" => [1, 6], "h7" => [1, 7],
       "a6" => [2, 0], "b6" => [2, 1], "c6" => [2, 2], "d6" => [2, 3], "e6" => [2, 4], "f6" => [2, 5], "g6" => [2, 6], "h6" => [2, 7],
       "a5" => [3, 0], "b5" => [3, 1], "c5" => [3, 2], "d5" => [3, 3], "e5" => [3, 4], "f5" => [3, 5], "g5" => [3, 6], "h5" => [3, 7],
       "a4" => [4, 0], "b4" => [4, 1], "c4" => [4, 2], "d4" => [4, 3], "e4" => [4, 4], "f4" => [4, 5], "g4" => [4, 6], "h4" => [4, 7],
       "a3" => [5, 0], "b3" => [5, 1], "c3" => [5, 2], "d3" => [5, 3], "e3" => [5, 4], "f3" => [5, 5], "g3" => [5, 6], "h3" => [5, 7],
       "a2" => [6, 0], "b2" => [6, 1], "c2" => [6, 2], "d2" => [6, 3], "e2" => [6, 4], "f2" => [6, 5], "g2" => [6, 6], "h2" => [6, 7],
       "a1" => [7, 0], "b1" => [7, 1], "c1" => [7, 2], "d1" => [7, 3], "e1" => [7, 4], "f1" => [7, 5], "g1" => [7, 6], "h1" => [7, 7],
       }
       mapping[move]
	end
	def get_piece_from_move(move)
		# binding.pry
		# puts mapping("a8")
		x = mapping(move)[0]
		y = mapping(move)[1]
		# print @board[x][y]
	end
end

# b = Board.new
# print b.mapping("a2")

# print b.mapping("a3")
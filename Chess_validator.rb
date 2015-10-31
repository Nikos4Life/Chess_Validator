require_relative 'Board.rb'
require_relative 'File_reader.rb'
class ChessValidator 
	def initialize()
		@file_reader = FileReader.new("files/simple_board.txt", "files/simple_moves.txt")
		@b = Board.new(@file_reader)
		# @b.get_piece_from_move
	end
	def method_name
		
	end
	
end

validator = ChessValidator.new
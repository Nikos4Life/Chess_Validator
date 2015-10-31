require 'pry'
class FileReader 
	def initialize(board_file, moves_file)
		@board_file = board_file
		@moves_file = moves_file
		# @board = Array.new(8) { Array.new(8) }
	end
	
	def read_board(board)
		File.open(@board_file) do |line|
			line.each_line do |position|
				board << position.split.map(&:to_s)
			end
		end
		board
	end
	def read_moves(moves)
		File.open(@board_file) do |line|
			line.each_line do |position|
				moves << position.split.map(&:to_s)
			end
		end
		moves
	end
	
end

# f = FileReader.new("files/simple_board.txt", "files/simple_moves.txt")
# f.read_board

# a = []
# File.open('files/tmp.txt') do |f|
#   f.each_line do |line|
#     a << line.split.map(&:to_s)
#   end
# end

# puts a.inspect
# main.rb

require 'gosu'
require_relative 'lib/chess'
require_relative 'lib/piece'
require_relative 'lib/board'
require_relative 'lib/move'
require_relative 'lib/const'
require_relative 'lib/window'
require_relative 'lib/keyboard'

$game = Chess.new
$game.board = Chess::Board.new
$game.window = Chess::Window.new
$game.input = Chess::Input.new

DEBUG()
$game.board.grid[3][3] = Chess::Piece.new :rook, :white
$game.start
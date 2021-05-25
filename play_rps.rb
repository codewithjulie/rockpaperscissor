require_relative "rockpaperscissor"

game = RockPaperScissor.new

until game.game_over?
  human = game.human_play
  computer = game.computer_play
  puts game.round_winner(human, computer)
  puts game.display_score
end

if game.won?
  game.display_winner("human")
else
  game.display_winner("computer")
end
class RockPaperScissor

  OPTIONS = ["rock", "paper", "scissor"]

  RPS_MAPPING = {
    "rock" => "scissor",
    "scissor" => "paper",
    "paper" => "rock"
  }

  def initialize
    @human_score = 0
    @computer_score = 0
    @max_score = 5
  end

  def computer_play
    OPTIONS.sample
  end

  def human_play
    hand = prompt_for_hand
    until hand == "rock" || hand == "paper" || hand == "scissor"
      puts "Invalid input, try again"
      hand = prompt_for_hand
    end
    hand
  end

  def round_winner(computer_hand, human_hand)
    puts "Human: #{human_hand}  Computer: #{computer_hand}"
    return "tie" if computer_hand == human_hand
    if RPS_MAPPING[computer_hand] == human_hand
      @computer_score += 1
      return "Computer scores"
    else
      @human_score += 1
      return "Human scores"
    end
  end

  def display_score
    puts "Human: #{@human_score}"
    puts "Computer: #{@computer_score}"
  end

  def display_winner(winner)
    puts "#{winner} wins!"
  end

  def prompt_for_hand
    print "Rock, Paper, or Scissor? "
    hand = gets.chomp.downcase
  end

  def won?
    @human_score >= 5
  end

  def lost?
    @computer_score >= 5
  end

  def game_over?
    won? || lost?
  end

end

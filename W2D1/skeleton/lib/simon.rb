require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    @sequence_length += 1
    # debugger
    input = require_sequence
    # round_success_message
    # debugger
    if check_seq_to_input(input) == false
      return @game_over = true
    end
    round_success_message
  end

  def show_sequence
    # debugger
    add_random_color
    seq.each do |color|
      p color
      sleep(3)
      system("clear")
    end
  end

  def check_seq_to_input(input)
    if @seq == input
      return true
    end
    false
  end

  def require_sequence
    p "please list the colors the same way they were shown to you"
    p "Ie. red blue green"
    user_input = $stdin.chomp.split(" ")
    if user_input.all? {|color_input| COLORS.include?(color_input)} == true
      return user_input
    end
    p "only put in these colors #{COLORS}"
    require_sequence
  end

  def add_random_color
    # colors = %w(red blue yellow green)
    @seq << COLORS.sample
  end

  def round_success_message
    p "Nice you gottem all! Can you do another one?"
    p "Anotha one!"
  end

  def game_over_message
    p "too bad you forgot the sequence! But you remembered #{sequence_length - 1}"
    p "try and get #{sequence_length} or more this time!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
    p "do you want to play again? (y/n)"
    input = $stdin#.chomp
    if input == "y"
      play
    end
  end
end

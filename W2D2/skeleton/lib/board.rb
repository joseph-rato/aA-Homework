class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1#Player.new(name1, (0..5).to_a)
    @player2 = name2#Player.new(name2, (6..13).to_a)
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    @cups.each_index do |i|
      @cups[i] = [:stone, :stone, :stone, :stone] unless i == 6 || i == 13
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  class EmptyCup < StandardError
    def message
      "Starting cup is empty"
    end
  end
  class NonExistantCup < StandardError
    def message
      "Invalid starting cup"
    end
  end

  def valid_move?(start_pos)
    unless start_pos.between?(0, 13)
      raise NonExistantCup
    end
    if @cups[start_pos].empty?
      raise EmptyCup
    end

  end

  def make_move(start_pos, current_player_name)
    turn_stones = []
    stones = @cups[start_pos].shift(cups[start_pos].size)
    turn_stones += stones
    # p turn_stones
    first_cup = start_pos
    until turn_stones.empty?
      first_cup += 1
      if first_cup == 13
        first_cup = 0
      end
      # if current_player_name == player1
      #   next if first_cup == 13
      # else
      #   next if first_cup == 6
      # end 
      # p @cups[first_cup]
      @cups[first_cup] << turn_stones.shift
    end
    self.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
  end
end

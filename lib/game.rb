class Game

  def self.set_instance(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize (player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def current_player
    @players.first
  end

  def player_being_attacked
    @players.last
  end

  def switch_turns
    @players << @players.shift
  end

  def game_over?
    player2.points == 0
  end

end

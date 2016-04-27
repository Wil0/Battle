class Player

  attr :name, :points

  DEFAULT_HP = 100
  REDUCE_HP = 10

  def initialize(name)
    @name = name
    @points = DEFAULT_HP
  end

  # def attack(player)
  #   player.receive_damage
  # end

  def receive_damage
    @points -= REDUCE_HP
  end



end

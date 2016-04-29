class Player

  attr :name, :points

  DEFAULT_HP = 100
  REDUCE_HP = 10

  def initialize(name)
    @name = name
    @points = DEFAULT_HP
  end

  def receive_damage
    @points -= Kernel.rand(1..10)
  end

end

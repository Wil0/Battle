class Player

  attr :name, :points, :damage

  DEFAULT_HP = 100
  REDUCE_HP = 10

  def initialize(name)
    @name = name
    @points = DEFAULT_HP
  end

  def damaged_received
    @damage = Kernel.rand(1..10)
  end

  def receive_damage
    @points -= damaged_received
  end

end

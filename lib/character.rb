class Character
  attr_reader :name, :hp, :damage

  def initialize(name, hp, damage)
    @name = name
    @hp = hp
    @damage = damage
  end

  def dead?
    @hp <= 0
  end
end
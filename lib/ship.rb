class Ship
  attr_reader :size
  def initialize(options = {})
    @size = options[:size]
  end

  def self.battleship
    new(size: 4)
  end

  def self.carrier
    new(size: 5)
  end

  def self.patrol_boat
    new(size: 1)
  end

  def self.submarine
    new(size: 2)
  end

  def self.destroyer
    new(size: 3)
  end
end

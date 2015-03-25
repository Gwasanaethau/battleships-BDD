class Ship
  attr_reader :size
  def initialize(options = {})
    @size = options[:size]
  end

  def self.battleship
    new(size: 4)
  end
end

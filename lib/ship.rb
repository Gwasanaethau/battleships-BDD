class Ship

  def initialize
    @sunk = false
  end

  def sink
    @sunk = true
  end

  def sunk?
    @sunk
  end
end

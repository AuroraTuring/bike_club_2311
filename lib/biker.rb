class Biker
  attr_reader :name, :max_distance, :rides, :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(type)
    @acceptable_terrain << type
  end

  def log_ride(ride, distance)
    @rides[ride] = [] if @rides[ride].nil?
    @rides[ride] << distance
  end

end

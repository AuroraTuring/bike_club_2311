class Ride
  attr_reader :name, :distance, :loop, :terrain

  def initialize(name, distance, loop, terrain)
    @name = name
    @distance = distance
    @loop = loop
    @terrain = terrain
  end

  # def total_distance
  #   # if the ride is not a loop,
  #   if loop? == false
  #     # double the base distance.
  #       distance * 2
  #   end
  # end

end

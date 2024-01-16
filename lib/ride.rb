class Ride
  attr_reader :name, :distance, :loop, :terrain

  def initialize(datahash)
    @name = datahash[:name]
    @distance = datahash[:distance]
    @loop = datahash[:loop]
    @terrain = datahash[:terrain]
  end

  def loop?
    @loop
  end

  def total_distance
    # if the ride is not a loop,
    if loop? == false
      # double the base distance.
        distance * 2
    end
  end

end

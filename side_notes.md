```ruby
pry(main)> require './lib/ride'
# => true

pry(main)> ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
# => #<Ride:0x00007f845c279ee8...>

pry(main)> ride1.name
# => "Walnut Creek Trail"

pry(main)> ride1.distance
# => 10.7

pry(main)> ride1.terrain
# => :hills

pry(main)> ride1.loop?
# => false

pry(main)> ride1.total_distance
# => 21.4

pry(main)> ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
# => #<Ride:0x00007f845c228b38...>

pry(main)> ride2.loop?
# => true

pry(main)> ride2.total_distance
# => 14.9
```
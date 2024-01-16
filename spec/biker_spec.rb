require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  before :each do
    @biker1 = Biker.new("Kenny", 30)
    @ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    @ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    @biker2 = Biker.new("Athena", 15)
  end

  it 'exists and has attributes' do
    expect(@biker1).to be_a(Biker)
    expect(@biker1.name).to eq("Kenny")
    expect(@biker1.max_distance).to eq(30)
    expect(@biker1.rides).to eq({})
    expect(@biker1.acceptable_terrain).to eq([])
  end

  it 'adds acceptable terrains' do
    @biker1.learn_terrain!(:gravel)
    @biker1.learn_terrain!(:hills)
    expect(@biker1.acceptable_terrain).to eq([:gravel, :hills])
  end

  # it 'logs rides' do

  # end


end

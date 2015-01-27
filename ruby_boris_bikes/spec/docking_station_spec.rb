require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new(capacity: 20)}
  let(:bike) { Bike.new }

  it 'should not have bikes when initialized' do
    expect(station.bike_count).to eq(0)
  end
  
  it 'should accept a bike' do
    expect(station.bike_count).to eq(0)
    station.dock!(bike)
    expect(station.bike_count).to eq(1)
  end

  it 'should release a bike' do
    station.dock!(bike)
    station.release!(bike)
    expect(station.bike_count).to eq(0)
  end

  it 'should know when it is full' do
    expect(station).not_to be_full
    20.times { station.dock!(Bike.new) }
    expect(station).to be_full
  end

  it 'should not accept a bike if it is full' do
    20.times { station.dock!(Bike.new) }
    expect(lambda { station.dock!(bike) }).to raise_error(RuntimeError, 'Station is full')
  end

  it 'broken bikes should not be available' do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break!
    station.dock!(working_bike)
    station.dock!(broken_bike)
    expect(station.available_bikes).to eq([working_bike])
  end

end
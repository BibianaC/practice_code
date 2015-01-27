require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }
  let(:bike) { Bike.new }

  it 'should not have bikes when initialized' do
    expect(station.bike_count).to eq(0)
  end
  
  it 'should accept a bike' do
    expect(station.bike_count).to eq(0)
    station.dock!(bike)
    expect(station.bike_count).to eq(1)
  end

end
require 'garage'

describe Garage do
  
  let(:garage) { Garage.new(capacity: 30) }
  let(:bike) { Bike.new } 

  it 'should be able to set a capacity' do
    expect(garage.capacity).to eq(30)
  end

  it 'should fix broken bikes' do
    garage.fix!(bike)
  end

end
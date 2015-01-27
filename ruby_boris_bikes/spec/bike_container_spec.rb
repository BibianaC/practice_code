require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

  let(:bike) { Bike.new }
  let(:holder) { ContainerHolder.new }

  it 'should accept a bike' do
    expect(holder.bike_count).to eq(0)
    holder.dock!(bike)
    expect(holder.bike_count).to eq(1)
  end

  it 'should give a warning if it is empty' do
    expect(lambda { holder.release!(bike) }).to raise_error(RuntimeError, 'It is empty')
  end

  it 'should give a warning if person wants to dock not a bike' do
    expect(lambda { holder.dock!(!bike) }).to raise_error(RuntimeError, 'It only accepts bikes')
  end
end
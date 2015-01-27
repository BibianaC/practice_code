require 'van'

describe Van do
  
  let(:van) { Van.new }
  let(:bike) { Bike.new }

  it "should have a default capacity" do
    expect(van.capacity).to eq(10)
  end

  it 'should accept bikes' do
    van.dock!(bike)
    expect(van.bike_count).to eq(1)
  end

  it 'should be able to move bikes' do
    van.dock!(bike)
    van.move!(bike)
  end

  it 'should be able to release broken bikes' do
    van.dock!(bike)
    van.release!(bike)
    expect(van.bike_count).to eq(0)
  end

end
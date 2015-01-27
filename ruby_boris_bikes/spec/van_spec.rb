require 'van'

describe Van do
  
  let(:van) { Van.new }
  let(:bike) { Bike.new }

  it "should have a default capacity" do
    expect(van.capacity).to eq(10)
  end

  it 'should accept bikes' do
    bike.break!
    van.dock!(bike)
    expect(van.bike_count).to eq(1)
  end

  it 'should be able to move broken bikes' do
    bike.break!
    van.dock!(bike)
    van.move_broken(bike)
  end

  it 'should be able to release broken bikes' do
    bike.break!
    van.dock!(bike)
    van.move_broken(bike)
    van.release!(bike)
    expect(van.bike_count).to eq(0)
  end

  it 'should be able to move fixed bikes' do
    bike.fix!
    van.dock!(bike)
    van.move_fixed(bike)
  end
  
end
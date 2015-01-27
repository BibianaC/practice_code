require 'bike'

describe Bike do

  let(:bike){ Bike.new }

  it 'should not be broken when initialized' do
    expect(bike).not_to be_broken
  end

end
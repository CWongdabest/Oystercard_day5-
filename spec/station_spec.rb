require 'station'

describe Station do

subject(:station) { described_class.new(name: 'name', zone: 1)}


it 'is expected to display station name info as required' do
  expect(station.name).to eq('name')
end

it 'is expected to display station zone info as required' do
  expect(station.zone).to eq(1)
end


end

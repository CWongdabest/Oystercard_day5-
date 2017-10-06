require 'journey'

describe Journey do
  subject(:journey) {Journey.new}
  let(:station) {double("station")}
  context "checking instanciation and instance variables" do
    it "instantiates a Journey object" do
      expect(journey).to be_instance_of(Journey)
    end

    it "responds to method entry_station" do
      expect(journey).to respond_to(:entry_station)
    end

    it "responds to method exit_station" do
      expect(journey).to respond_to(:exit_station)
    end

    it "responds to method fare" do
      expect(journey).to respond_to(:fare)
    end

    it 'returns entry station info upon entry' do
      expect(journey.start(station)).to eq(station)
    end

    it 'returns exit station info upon exit' do
      expect(journey.finish(station)).to eq(station)
    end

    it 'tells if a journey is completed' do
      journey.start(station)
      journey.finish(station)
      expect(journey.complete?).to eq(true)
    end

    it 'tells if a journey is incompleted' do
      journey.start(station)
      expect(journey.complete?).to eq(false)
    end

    it 'tells if a journey is incompleted' do
      journey.finish(station)
      expect(journey.complete?).to eq(false)
    end

    it 'deducts fare accurately' do
      allow(journey).to receive(:complete?).and_return(true)
      expect(journey.calculate_fare).to eq(1)
    end




end





end

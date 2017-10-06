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
end
  

  

  
end
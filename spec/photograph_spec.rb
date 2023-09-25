require 'rspec'

RSpec.describe Photograph do
  before(:each) do
    @attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }     
    @photograph = Photograph.new(@attributes)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@photograph).to be Photograph
    end

    it 'holds an id number, name, artist ID, and year' do
      expect(@photograph.id).to eq("1")
      expect(@photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
      expect(@photograph.artist_id).to eq("4")
      expect(@photograph.year).to eq("1954")
    end

    it 'can create a ' do
      expect(@photograph).to be Photograph
      expect(@photograph.id).to eq("1")
    end
  end
end
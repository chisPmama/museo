require 'spec_helper'

RSpec.describe Curator do
  before(:each) do
    @curator = Curator.new 
    @curator.photographs
    @photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
      })     
    @photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
      })        

    @artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
      })    

      @artist_2 = Artist.new({
        id: "2",      
        name: "Ansel Adams",      
        born: "1902",      
        died: "1984",      
        country: "United States"      
        })        

  end

  describe '#initialize' do
    it 'exists and starts with an empty array for photographs' do
      expect(@curator).to be Curator
      expect(@curator.photographs).to eq([])
    end

    it 'can add photographs to the Curator collection' do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      expect(@curator.photographs.count).to eq(2)
      expect(@curator.photographs.first.class).to be Photograph
    end

    it 'upon initializing does not contain any artists' do
      expect(@curator.artists).to eq([])
    end

    it 'can add artists to the Curator collection' do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.artists.count).to eq(2)
      expect(@curator.artists.first.class).to be Artist
    end

    it 'can find artist by their artist ID' do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
    end
  end
end
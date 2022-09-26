require './lib/photograph'
require './lib/artist'
require './lib/curator'
require 'rspec'

RSpec.describe Curator do
    let(:curator) {Curator.new}
    let(:photo_1) {Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
        })}
    let(:photo_2) {Photograph.new({
        id: "2",      
        name: "Moonrise, Hernandez",      
        artist_id: "2",      
        year: "1941"      
        })}
    let(:artist_1) {Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
        })}
    let(:artist_2) {Artist.new({
        id: "2",      
        name: "Ansel Adams",      
        born: "1902",      
        died: "1984",      
        country: "United States"      
        })}

    it '1. exists' do
        expect(curator).to be_an_instance_of(Curator)
    end

    it '2. has no photographs by default' do
        expect(curator.photographs).to eq []
    end

    it '3. can add photographs' do
        curator.add_photograph(photo_1)
        curator.add_photograph(photo_2)
        expect(curator.photographs).to include photo_1, photo_2
    end

    it '4. can add artists' do
        expect(curator.artists).to eq []
        curator.add_artist(artist_1)
        curator.add_artist(artist_2)
        expect(curator.artists).to include artist_1, artist_2
    end

end
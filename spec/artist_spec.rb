require './lib/photograph'
require './lib/artist'
require 'rspec'

RSpec.describe Artist do

    it '1. exists' do
        attributes = {
            id: "2",
            name: "Ansel Adams",
            born: "1902",
            died: "1984",
            country: "United States"
        }
        artist = Artist.new(attributes)
        expect(artist).to be_an_instance_of(Artist)
    end

    it '2. has attributes' do
        attributes = {
            id: "2",
            name: "Ansel Adams",
            born: "1902",
            died: "1984",
            country: "United States"
        }
        artist = Artist.new(attributes)
        expect(artist.id).to eq "2"
        expect(artist.name).to eq "Ansel Adams"
        expect(artist.born).to eq "1902"
        expect(artist.died).to eq "1984"
        expect(artist.country).to eq "United States"
    end

    it '3. knows age at death' do
        attributes = {
            id: "2",
            name: "Ansel Adams",
            born: "1902",
            died: "1984",
            country: "United States"
        }
        artist = Artist.new(attributes)
        expect(artist.age_at_death).to eq 82
    end

end
require 'track.rb'

describe Track do
    it 'constructs' do
        track_1 = Track.new("Title_1", "Artist_1")
        track_2 = Track.new("Title_2", "Artist_2")
        expect(track_1.title).to eq("Title_1")
        expect(track_2.artist).to eq("Artist_2")
    end

    it 'can format a string including title and artist' do
        track_1 = Track.new("Title_1", "Artist_1")
        expect(track_1.format).to eq ("Title Title_1 by Artist_1")
    end

end
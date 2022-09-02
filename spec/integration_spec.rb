require 'music_library.rb'
require 'track.rb'

describe 'integration' do
  context 'when we add a track to the library' do
    it 'comes back in the list' do
      music_library = MusicLibrary.new
      track = Track.new("Title", "Artist")
      music_library.add(track)
      expect(music_library.all).to eq([track])
    end
  end
end
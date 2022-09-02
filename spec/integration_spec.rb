require 'music_library.rb'
require 'track.rb'

describe 'integration' do
  context 'when we add a track to the library' do
    it 'comes back in the list' do
      music_library = MusicLibrary.new
      track_1 = Track.new("Title_1", "Artist_1")
      track_2 = Track.new("Title_2", "Artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq([track_1, track_2])
    end
  end

  context 'with tracks added' do
    it 'searches for tracks by full title' do
      music_library = MusicLibrary.new
      track_1 = Track.new("Title_1", "Artist_1")
      track_2 = Track.new("Title_2", "Artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.search_by_title("Title_1")).to eq(track_1)
    end

    it 'searches for tracks by substring' do
      music_library = MusicLibrary.new
      track_1 = Track.new("Title_1", "Artist_1")
      track_2 = Track.new("Title_2", "Artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.search_by_title("tle_2")).to eq(track_2)
    end
  end

  context 'with tracks added' do
    it 'searches for tracks by full title' do
      music_library = MusicLibrary.new
      track_1 = Track.new("Title_1", "Artist_1")
      
      music_library.add(track_1)
      
      expect(music_library.search_by_title("fred")).to eq([nil])
    end
  end

end


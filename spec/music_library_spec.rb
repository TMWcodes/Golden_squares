require 'music_library.rb'

describe MusicLibrary do
    context 'initially' do
        it 'is empty' do
            music_library = MusicLibrary.new
            expect(music_library.all).to eq([])
        end

        it 'is empty' do
            music_library = MusicLibrary.new
            expect(music_library.search_by_title("fred")).to eq([])
        end

    end
end

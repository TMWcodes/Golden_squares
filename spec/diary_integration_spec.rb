require 'diary_entry.rb'
require 'diary.rb'

describe 'diary_integration' do
    context 'without adding any entries' do
        it 'comes back empty' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("title_1", "There was a man")
            expect(diary.all).to eq([])
            diary.add(entry_1)
            expect(diary.all).to eq([entry_1])
        end
    end

    context 'in this situation' do
        it 'does something' do
            diary = Diary.new
            # entry_1 = DiaryEntry.new("title_1", "There was a man")
            # entry_2 = DiaryEntry.new("title_2", "There was a woman")
            # entry_3 = DiaryEntry.new("title_3", "There was a dog")
            # diary.add(entry_1)
            # diary.add(entry_2)
            # diary.add(entry_3)
            # diary.all #=> [entry_1, entry_2, Entry_3]
            # diary.count_words #=> 12
            # diary.reading_time(2) #=> 6
        end
    end


    context 'in this situation' do
        it 'does something' do
            diary = Diary.new
            # entry_1 = DiaryEntry.new("title_1", "There was a man")
            # entry_4 = DiaryEntry.new("title_1", "There wasn't")
            # entry_5 = DiaryEntry.new("title_1", "There was a dinosaur walking down the middle of the street")
            # diary.all #=> [entry_1, entry_4, entry_5]
            # diary.find_best_entry_for_reading_time(2, 1) #=> ["There wasn't]
        end
    end
end
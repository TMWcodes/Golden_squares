require 'diary_entry.rb'
require 'diary.rb'

describe 'diary_integration' do
    context 'without adding any entries or one entry' do
        it 'comes back empty or with one entry respectively' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("title_1", "There was a man")
            expect(diary.all).to eq([])
            diary.add(entry_1)
            expect(diary.all).to eq([entry_1])
        end
    end

    context 'when given multiple entries' do
        it 'returns all entries ' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("title_1", "There was a man")
            entry_2 = DiaryEntry.new("title_2", "There was a woman")
            entry_3 = DiaryEntry.new("title_3", "There was a dog")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            expect(diary.all).to eq([entry_1, entry_2, entry_3])
            # diary.count_words #=> 12
            # expect(diary.reading_time(2)).to eq 6
        end
        it 'counts words' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("title_1", "There was a man")
            entry_2 = DiaryEntry.new("title_2", "There was a woman")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.count_words).to eq 8
            
            # entry_5 = DiaryEntry.new("title_1", "There was a dinosaur walking down the middle of the street")
            # diary.all #=> [entry_1, entry_4, entry_5]
            # diary.find_best_entry_for_reading_time(2, 1) #=> ["There wasn't]
        end

        it 'counts words' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("title_1", "There was a man")
            entry_2 = DiaryEntry.new("title_2", "There was a woman")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.reading_time(2)).to eq 4
        end
        it 'finds the best entry for time' do
        diary = Diary.new
            entry_1 = DiaryEntry.new("title_1", "There was a man")
            entry_2 = DiaryEntry.new("title_2", "There was a woman")
            entry_3 = DiaryEntry.new("title_3", "There was a dog")
            entry_3 = DiaryEntry.new("title_3", "There wasn't")
            entry_5 = DiaryEntry.new("title_1", "There was a dinosaur walking down the middle of the street")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            diary.add(entry_4)
            diary.add(entry_5)
            expect(diary.find_best_entry_for_reading_time(2, 1)).to eq ["There wasn't"]
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
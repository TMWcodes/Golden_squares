require 'diary.rb'

describe DiaryEntry do
    it 'returns entry title' do
        diary = DiaryEntry.new("Waddle", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
        expect(diary.title).to eq("Waddle")
    end

    it 'returns contents' do
        diary = DiaryEntry.new("Waddle", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
        expect(diary.contents).to eq("A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
    end
    #19:11
    it ' counts words' do
        diary = DiaryEntry.new("Waddle", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
        expect(diary.count_words).to eq(22)
    end
    it 'calculates reading time'do
        diary = DiaryEntry.new("Waddle", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
        expect(diary.reading_time(20)).to eq(1)
    end
    
    it 'gives a chunk of text to read depending on time'do
        diary = DiaryEntry.new("Waddle", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
        expect(diary.reading_chunk(3, 1)).to eq("A duck walked")
    end

    it 'creates gives new chunk' do
        diary = DiaryEntry.new("title", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.")
        diary.reading_chunk(2, 1)
        diary.reading_chunk(2, 1)
        expect(diary.reading_chunk(2,1)).to eq("to a")
    end 

     it 'should restart from the beginning' do
        diary = DiaryEntry.new("title", "A duck walked up to a lemonade stand")
        diary.reading_chunk(2, 1)
        diary.reading_chunk(2, 1)
        diary.reading_chunk(2, 1)
        diary.reading_chunk(2, 1)
        expect(diary.reading_chunk(2,1)).to eq("A duck")

     end
end

class Diary

    def initialize
        @diary_entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
      @diary_entries << entry
    end
  
    def all
      # Returns a list of instances of DiaryEntry
      @diary_entries 
    end
  
     #   Returns the number of words in all diary entries
    #   HINT: This method should make use of the `count_words` method on DiaryEntry.
    def count_words

     @diary_entries.map do |entry|
         entry.count_words
     end.sum
     
    end
  
    def reading_time(wpm) 
        @diary_entries.map do |entry|
            entry.reading_time(wpm)
        end.sum
        # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
    end
  end
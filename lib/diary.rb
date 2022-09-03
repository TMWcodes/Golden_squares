
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
  
    def count_words

     @diary_entries.map do |entry|
         entry.count_words
     end.sum
     
    end
  
    def reading_time(wpm) 
        @diary_entries.map do |entry|
            entry.reading_time(wpm)
        end.sum
       
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      # @diary_entries.first
      # self.reading_time(wpm) # to read all
      # self.count_words # count all words
    
     readable_entries = @diary_entries.filter { |entry|
      entry.reading_time(wpm) <= minutes
      }
      return readable_entries

      # [2, 2, 2, 1, 5]
    # @diary_entries.first
   

      # map do | entry | 
      #   entry.reading_time(wpm)
      #   if reading_time(wpm) < minutes 
      #     puts entry
      #   end
    # end
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
        # Returns an instance of diary entry representing the entry that is closest 
        # to, but not over, the length that the user could read in the minutes they
        # have available given their reading speed.
      
    end
  end

 
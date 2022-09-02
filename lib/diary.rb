class DiaryEntry
  def initialize(title, contents = "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.The man said No, we just sell lemonade But its cold and it's fresh, and its all home-made. Can I get you a glass? The duck said “Ill pass.") # title, contents are strings
    @title = title
    @contents = contents
    @last_read = 0
  end

  def title
    # Returns the title as a string
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    counter = 0
    words = @contents.split
    words.each do |word| 
      counter += 1
    end
    counter
  end

  def reading_time(wpm) 
    
    time = count_words / wpm
    if time < 1 
     "under a minute"
    else
    time 
    end

 
  end

  def reading_chunk(wpm, minutes) 
    # e.g. 2 minute reading at a pace of 20 words per minute
    words = minutes * wpm 
    content_array = @contents.split(" ")
    chunk = content_array[@last_read, words]
    if @last_read + words >= count_words 
      @last_read = 0
    else
      @last_read = @last_read + words
    end
    
   
    return chunk.join " "
    
    # alt solution  
    # chunk = content_array.map.with_index do |word, index|
    # word if index < words
    # end
    # read = chunk.compact!

    # delete from array or index counter 
    
    


   

    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end



end

diary = DiaryEntry.new("title", "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?.The man said No, we just sell lemonade But its cold and it's fresh, and its all home-made. Can I get you a glass? The duck said “Ill pass.") 
# contents = "A duck walked up to a lemonade stand and he said to the man running the stand, have you got any grapes?."
# p contents.length
# p contents.split(" ").count
# p diary.count_words
diary.reading_time(2)
diary.reading_chunk(2,1)
diary.reading_chunk(2,1)
p diary.reading_chunk(2,1)
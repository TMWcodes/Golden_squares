class Track
    def initialize(title, artist)
      @title = title
      @artist = artist # title and artist are both strings
    end
  
    def title
      @title
      # Returns the title as a string
    end

    def artist
      @artist
    end
  
    def format
      # Returns a string of the form "TITLE by ARTIST"
      "Title #{"Title_1"} by #{"Artist_1"}"
    end
  end
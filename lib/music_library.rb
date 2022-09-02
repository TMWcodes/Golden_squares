class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
     # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
     @tracks
    # Returns a list of track objects
  end
  
  def search_by_title(keyword) 
    @tracks.map  do |track|
      if track.title.include? keyword
       return track
      end
    end
    # keyword is a string
    # Returns a list of tracks with titles that include the keyword
  end
end
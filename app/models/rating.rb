class Rating
  attr_accessor :score, :movie, :viewer

  ALL = []

  def self.all
    ALL
  end

  def initialize(score, movie, viewer)
    @score = []
    @movie = movie
    @viewer = viewer
  end

#   def viewer
#     @viewer
# #    returns the viewer for that given rating
#   end
#
#   def movie
#     @movie
# #returns the movie for that given rating
#   end
end

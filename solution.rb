require 'pry'

class Viewer
  attr_accessor :first_name, :last_name

  ALL = []

  def self.all
    ALL

    # should return all of the viewers
  end

  def initialize(name)
    @name = name
    ALL << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)

    self.all.find do |name|
      self.full_name == name


      # given a string of a full name, returns the first customer whose full name matches
    end
  end

  def create_rating(score, movie)

    ratiing = Ratiing.new(score, movie, self)
  end

# given a score and a movie, creates a new Rating and associates it with that viewer and that movie
end



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


require 'pry'

class Movie
  attr_accessor :title

  ALL = []

  def initialize(title, viewers, ratings)
    self.title = title
    @ratings = []
    @viewers = viewers
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_title(movie)
    ALL.find do |movie|
      self.title == title
      # given a string of movie title, returns the first movie that matches
    end
  end

  def ratings
    @raitings
    # raiting.all
  end

      # returns an array of all ratings for that movie

  def viewers(rating)
    self.ratings.find_all do |ratiing|
      ratiing.viewer
    end
    #should return all of the viewers who have left ratings for that movie.
  end

  def average_rating

    avg_rating = self.ratings.average.inject
    avg_rating / size
  end

    #should return the average of all of the scores for the ratings of that particular movie.



end

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
binding.pry
    #should return the average of all of the scores for the ratings of that particular movie.



end

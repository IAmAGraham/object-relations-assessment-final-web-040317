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

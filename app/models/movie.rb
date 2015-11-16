class Movie < ActiveRecord::Base
  def self.get_ratings
    ratings = []
    Movie.select(:rating).distinct.each do | value|
      ratings << value.rating
    end
    ratings
  end
end

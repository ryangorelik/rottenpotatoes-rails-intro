class Movie < ActiveRecord::Base
  @all_ratings = ['G','PG','PG-13','R']
  def Movie.all_ratings()
    @all_ratings
  end
  
  # input ratings_list is an array of ratings to select
  def Movie.with_ratings(ratings_list)
    if ratings_list.nil? or ratings_list.empty?
      return Movie.all
    end
    where('upper(rating) IN (?)', ratings_list)
  end
  
end

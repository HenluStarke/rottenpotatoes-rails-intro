module ApplicationHelper
  def self.get_index_th_css_class(params)
    css = {:title => 'th', :release_date => 'th'}
    return css if params == {}
    return css.merge({params[:sorting_by].to_sym => 'hilite'})
  end
  def self.get_selection(movie_ratings,params)
    all_ratings = {}
    selection = []
    movie_ratings.each do | rating |
      all_ratings.store(rating, true)
      if params.has_key?(:ratings)
        if params[:ratings].has_key?(rating)
          all_ratings.store(rating, true)
        else
          all_ratings.store(rating, false)
        end
      end
      selection << rating if all_ratings[rating]
    end
    return all_ratings, selection
  end
end

module ApplicationHelper
  def self.get_index_th_css_class(params)
    css = {:title => 'th', :release_date => 'th'}
    return css if params == {}
    return css.merge({params[:sorting_by].to_sym => 'hilite'})
  end
end

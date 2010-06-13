module ApplicationHelper
  def sort_link(column, label=nil, css=nil)
    column = column.to_s
    css ||= ''
    sort = ''
    match = (params[:sort] =~ /#{column} (\w+)/)
    if(match)
      match = params[:sort].split(' ')
      css = "sort sort-#{match[1] =~ /ASC/i ? 'asc' : 'desc'}"
      sort = "#{column} #{match[1] =~ /ASC/i ? 'DESC' : 'ASC'}"
      # "Switching from #{match[1]} to #{sort}"
    else
      sort = "#{column} DESC"
    end
    link_to((label ? label : column), url_for(request.path_parameters.merge({:search => params[:search],:sort => sort})), :class => css)
  end
end

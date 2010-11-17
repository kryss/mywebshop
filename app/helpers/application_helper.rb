module ApplicationHelper
  def users_show_path_helper(user_id)
    "/users/show/" + user_id.to_s
  end

  def show_content_url(page)
    request. + "/" + page
  end
  def show_user_url(page)
    url = "/" + request.path_parameters[:controller] + "/" + request.path_parameters[:action] +  "/" + request.path_parameters[:id]
    return url + "/" + page
  end


end

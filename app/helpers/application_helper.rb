module ApplicationHelper
  def users_show_path_helper(user_id)
    "/users/show/" + user_id.to_s
  end

  def show_content_url(page)
    request. + "/" + page
  end
  def show_user_url(page)
    "/users/show/#{current_user.id}/#{page}"
  end

end

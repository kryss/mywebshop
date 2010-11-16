module ApplicationHelper
  def users_show_path_helper(user_id)
    "/users/show/" + user_id.to_s
  end
end

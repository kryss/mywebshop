module SessionsHelper

#  def sign_in(user)
#    # cookies.permanent.signed[:remember_token] = [user.id, user.salt]
#    session[:remember_token] = [user.id, user.salt]
#    current_user = user
#  end
#
#  def sign_out
#    # cookies.delete(:remember_token)
#    session[:remember_token] = [nil, nil]
#    corrent_user = nil
#  end
#
#  def signed_in?
#    !current_user.nil?
#  end
#
#
#  def current_user
#    @current_user ||= user_from_remember_token
#  end
#
def current_user?(user)
   user == current_user
end

def current_shop
  current_user.shop
end

def current_collection
  @collection = Collection.find(session[:current_collection])
end
  
def current_collection?(collection)
  session[:current_collection] == collection.id
end


def show_menu?
  ($menu_show_list.include?(params[:controller] + "#" + params[:action]) or params[:controller] == "pages") ? false : true
end

  private
  
  $menu_show_list = [ "users#index",
                      "devise/registrations#edit", 
                      "shops#index", 
                      "shops#new",
                      "shops#show" ]
  
#
#  def user_from_remember_token
#    User.authenticate_with_salt(*remember_token)
#  end
#
#  def remember_token
#    #cookies.signed[:remember_token] || [nil, nil]
#    session[:remember_token] || [nil, nil]
#  end
#
#  def deny_access
#    store_location
#    redirect_to signin_path, :notice => "Please sign in to access this page."
#  end
#
  def store_location
    session[:return_to] = request.fullpath
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end

  def clear_return_to
    session[:return_to] = nil
  end

#  def authenticate
#    deny_access unless signed_in?
#  end

end

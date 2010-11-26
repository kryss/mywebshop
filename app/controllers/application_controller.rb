class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale 
  include SessionsHelper
  

  def set_locale
    if (params[:locale] != nil)
      I18n.locale = params[:locale]
      session[:locale] = params[:locale]
    elsif (session[:locale] != nil)
      I18n.locale = session['locale']
    else
      I18n.locale = extract_locale_from_accept_language_header
    end
  end
  
  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first 
  end
end

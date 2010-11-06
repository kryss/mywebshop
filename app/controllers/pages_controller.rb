class PagesController < ApplicationController
  
  def initialize 
    super()
    @base_title = "MyWebShop - "
  end
  def home
    @title = @base_title + "Home"
  end

  def help
    @title = @base_title + "Help"
  end

  def contact
    @title = @base_title + "Contact"
  end

  def about
    @title = @base_title + "About"
  end

end

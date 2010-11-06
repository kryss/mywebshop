require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "MyWebShop - "
  end
  
  describe "get 'home'" do
    it "doit retourner une page" do
      response.should be_success
    end
    
    it "doit avoir le bon titre" do
      response.should have_selector("title", 
                                    :content => "#{@base_title} Home")
    end
  end


  describe "get 'contact'" do
    it "doit retourner une page" do
      response.should be_success
    end
    
    it "doit avoir le bon titre" do
      response.should have_selector("title", :content => @base_title + "Contact")
    end
  end

  describe "get 'Help'" do
    it "doit retourner une page" do
      response.should be_success
    end
    
    it "doit avoir le bon titre" do
      response.should have_selector("title", :content => @base_title + "Help")
    end
  end

  describe "get 'About'" do
    it "doit retourner une page" do
      response.should be_success
    end
    
    it "doit avoir le bon titre" do
      response.should have_selector("title", :content => @base_title + "About")
    end
  end

  describe "get 'home'" do
    it "doit retourner une page" do
      response.should be_success
    end
    
    it "doit avoir le bon titre" do
      response.should have_selector("title", :content => @base_title + "Home")
    end
  end
  
end


class PagesController < ApplicationController
#before_filter :disable_nav, only: [:welcome]

  def index
    @disable_nav = true
    @disable_footer = true
  end
  
  def welcome
    @disable_nav = true
    @disable_footer = true
    #render file: 'public/welcome'
  end
  
  # def welcome
  #   render file: 'public/welcome'
  # end

  def home
    redirect_to recipes_path if logged_in? 
  end
  


end
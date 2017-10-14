class PagesController < ApplicationController

  def home
    redirect_to recipe_path if logge_in? 
  end

end
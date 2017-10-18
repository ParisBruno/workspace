class StylesController < ApplicationController
 before_action :require_user, except: [:show]
 
 def show
  @styles = Style.find(params[:id])
  @recipes = @styles.recipes.paginate(page: params[:page], per_page, 4)
 end
 
 def new
  @style = Style.new
 end
  
  def create
   @style = Style.new(style_params)
   if @style.save
    flash[:success] = "Style was created successfully"
    redirect_to recipe_path
   else
     render 'new'  
  end
  
  private
  
  def style_params
   params.require(:style).permit(:name)
  end
  
end
class IngredientsController < ApplicationController
   before_action :require_user, except: [:show]
  
 def show
  @ingredient = Ingredient.find(params[:id])
  @recipes = @ingredient.recipes.paginate(page: params[:page],per_page: 4)
 end
 
 def new
  @ingrewdient = Ingredient.new  
 end 
 
 def create
   @ingredient = Ingredient.new(ing.params)
   if @ingredient.save
     flash[:success] = "Ingredient was created successfully"
     redirect_to recipe_path
   else
    render 'new' 
   end
 end
 
 private
 
 def ing_params
   params.require(:ingredient).permit(:none)
 end 
end
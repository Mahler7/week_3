class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end

  def show
    #@recipe = Recipe.find_by(id: params[:id]) #seaches by id for id entered in params second id must match id in routes
    @recipes = Recipe.find(params[:id])
  end

  def new

  end

  def create
    @recipes = Recipe.create({title: params[:title], 
                              chef: params[:chef],
                              ingredients: params[:ingredients],
                              directions: params[:directions]})
    
    flash[:success] = "New Recipe Created"

    redirect_to "/recipes"
  end

  def edit
    @recipes = Recipe.find(params[:id])
  end

  def update
    @recipes = Recipe.find(params[:id])
    @recipes.update({title: params[:title],
                    chef: params[:chef],
                    ingredients: params[:ingredients],
                    directions: params[:directions]})
    
    flash[:success] = "Recipe Updated"

    redirect_to "/recipes/#{@recipes.id}"
  end

  def destroy
    @recipes = Recipe.find(params[:id])
    @recipes.destroy

    flash[:success] = "You did such a great job destroying that recipe."
    flash[:warning] = "Recipe Destroyed"

    redirect_to "/recipes"
  end
   
end

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
  end

   
end

class RecipeController < ApplicationController
  def index
    @recipes = Recipe.all

  end
  def new
    @recipe = Recipe.new
  end
  def create
    recipe = Recipe.new
    recipe.title = params[:title]
    recipe.description = params[:description]
    recipe.duration = params[:duration]
    recipe.url = params[:url]
    recipe.image = params[:image]
    recipe.video = params[:video]
    recipe.save

    redirect_to "/recipe"
  end
  def show
    @recipe = Recipe.find params[:id]
  end
  def edit
    @recipe = Recipe.find params[:id]  
  end
  def destroy
    @recipe = Recipe.find params[:id]
    @recipe.destroy
  end

  def update
    recipe = Recipe.find params[:id]
    recipe.title = params[:title]
    recipe.description = params[:description]
    recipe.duration = params[:duration]
    recipe.url = params[:url]
    recipe.image = params[:image]
    recipe.video = params[:video]
    recipe.save
    redirect_to "/recipe"
  end
  
  
end
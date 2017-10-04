class RecipeController < ApplicationController
before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipe
  # GET /recipe.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipe/1
  # GET /recipe/1.json
  def show
    set_recipe
  end

  # GET /recipe/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipe/1/edit
  def edit
    set_recipe
  end

  # POST /recipe
  # POST /recipe.json
  def create
    @recipe = Recipe.new(recipe_params)

    puts items_ids = recipe_params[:items_ids]

    items_ids.each do |item|

      @recipe.items << items_ids

    end

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe/1
  # PATCH/PUT /recipe/1.json
  def update
    # puts params
    puts "This is the params #{params[:item_ids]}" 

    # items_ids.each do |item|

    #   @recipe.items << items_ids

    # end
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe/1
  # DELETE /recipe/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipe_url, notice: 'recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :description, :duration, :steps, :url, :video, :image, item_ids: [])
    end
end

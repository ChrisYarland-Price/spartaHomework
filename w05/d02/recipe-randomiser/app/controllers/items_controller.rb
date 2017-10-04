class ItemsController < ApplicationController
before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /item
  # GET /Item.json
  def index
    @items = Item.all
  end

  # GET /item/1
  # GET /item/1.json
  def show
    set_item
  end

  # GET /item/new
  def new
    @item = Item.new
  end

  # GET /item/1/edit
  def edit
    set_item
  end

  # POST /item
  # POST /Item.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @Item.save
        format.html { redirect_to @item, notice: 'item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @Item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item/1
  # PATCH/PUT /item/1.json
  def update
    # puts params
    puts "This is the params #{params[:items_ids]}" 

    # items_ids.each do |item|

    #   @Item.items << items_ids

    # end
    respond_to do |format|
      if @Item.update(item_params)
        format.html { redirect_to @item, notice: 'item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @Item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item/1
  # DELETE /item/1.json
  def destroy
    @Item.destroy
    respond_to do |format|
      format.html { redirect_to item_url, notice: 'item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :duration, :steps, :url, :video, :image, :item_ids)
    end
end
class BagsController < ApplicationController
  before_action :set_bag, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  # GET /bags or /bags.json
  def index
    @bags = Bag.all
  end

  # GET /bags/1 or /bags/1.json
  def show
    @items = @bag.items
    @price = 0.00
    @items.each do |i|
      @price = @price + i.price
    end
  end

  # GET /bags/new
  def new
    @bag = Bag.new
  end

  # GET /bags/1/edit
  def edit
  end
  
  def checkout
    item = Item.find_by(id: params[:id])
    user = current_user
    mBag = user.bag
    mBag.items.delete_all
    redirect_to show_user_bag_path(:id => current_user.id)
  end
  
  def addToList
    item = Item.find_by(id: params[:id])
    
    user = current_user
    mBag = user.bag
    mBag.items << item unless mBag.items.include?(item)
  end
  
  def removeFromList
    item = Item.find_by(id: params[:id])
    user = current_user
    bag = user.bag
    bag.items.destroy(item)
    redirect_to show_user_bag_path(:id => current_user.id)
  end
  
  # POST /bags or /bags.json
  def create
    @bag = Bag.new(bag_params)

    respond_to do |format|
      if @bag.save
        format.html { redirect_to @bag, notice: "Saved list was successfully created." }
        format.json { render :show, status: :created, location: @bag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bags/1 or /bags/1.json
  def update
    respond_to do |format|
      if @bag.update(bag_params)
        format.html { redirect_to @bag, notice: "Saved list was successfully updated." }
        format.json { render :show, status: :ok, location: @bag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bags/1 or /bags/1.json
  def destroy
    @bag.destroy
    respond_to do |format|
      format.html { redirect_to bags_url, notice: "Saved list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bag
      user = User.find_by(id: params[:id])
      @bag = user.bag
    end

    # Only allow a list of trusted parameters through.
    def bag_params
      params.require(:bag).permit(:user_id)
    end
end

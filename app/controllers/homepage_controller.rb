class HomepageController < ApplicationController
  def show
    if params[:col].nil?
      @randItem = Item.limit(1).offset(randNum)
      @popItems = Item.limit(3).where("popularity > ?", 8) 
    else 
       @collection = params[:col]
       @items = Item.where(collection: @collection)
    end
    @user = current_user
  end

  
  private
  def randNum
    rand(Item.all.length)
  end
  
end

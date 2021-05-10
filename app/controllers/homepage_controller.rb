class HomepageController < ApplicationController
  def show
    if params[:col].nil?
      @randItem = Item.limit(1).offset(randNum)
      @popItems = Item.limit(3).where("popularity > ?", 8) 
    else 
       @collection = params[:col]
       @items = Item.where(collection: @collection)
    end
  end
  
  def addToList
    user = current_user
    @savedList = SavedList.where(user_id: user.id)
    @assoc = @savedList.items.create({item_id: @item.id})
    
    if @assoc.save 
      redirect_to root_path, notice: 'Added' + @item.name + 'to savelist'
    end
    
  end
  
  private
  def randNum
    rand(Item.all.length)
  end
  
end

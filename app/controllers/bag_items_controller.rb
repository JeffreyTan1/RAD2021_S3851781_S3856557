class BagItemsController < ApplicationController
  def addToList
    item = Item.find_by(id: params[:id])
    user = current_user
    mBag = user.bag
    bag_item = BagItem.create(color: params[:color], size: params[:size], 
    quantity: params[:quantity], bag_id: mBag.id, item_id: item.id)
    bag_item.save
    redirect_to root_path
  end
  
  def removeFromList
    item = Item.find_by(id: params[:id])
    user = current_user
    bag = user.bag
    bag.items.destroy(item)
    redirect_to show_user_bag_path(:id => current_user.id)
  end
  

end
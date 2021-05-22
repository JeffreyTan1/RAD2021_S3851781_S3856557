class BagItemsController < ApplicationController
  def addToList
    item = Item.find_by(id: params[:id])
    user = current_user
    mBag = user.bag
    
    if mBag.bag_items.find_by(item_id: item.id).nil? 
      if !params[:color].nil? && !params[:size].nil?
        bag_item = BagItem.create(color: params[:color], size: params[:size], 
        quantity: params[:quantity], bag_id: mBag.id, item_id: item.id)
        bag_item.save
        redirect_back(fallback_location: root_path, notice: 'Item added to bag!')
      else
        redirect_back(fallback_location: root_path, notice: 'Please select a colour and size!')
      end
    else
      
      redirect_back(fallback_location: root_path, notice: 'Item already in bag, nothing added!')
    end
    
  end
  
  def removeFromList
    item = Item.find_by(id: params[:id])
    user = current_user
    bag = user.bag
    bag.items.destroy(item)
    redirect_to show_user_bag_path(:id => current_user.id)
  end
  

end
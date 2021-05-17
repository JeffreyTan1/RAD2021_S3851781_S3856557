class HomepageController < ApplicationController
  def show
    if params[:col].nil?
      @randItem = Item.limit(1).offset(randNum)
      @popItems = Item.limit(3).where("popularity > ?", 8) 
    else 
       @collection = params[:col]
       if @collection == "New Arrivals"
         @items = Item.where(created_at: (Time.now.midnight - 3.month)..Time.now.midnight)
       else
        @items = Item.where(collection: @collection)
       end
    end
    @user = current_user
  end
  
  def helpAndSupp
    puts "debugs"
  end

  
  private
  def randNum
    rand(Item.all.length)
  end
  
end

class HomepageController < ApplicationController
  def show
    @randItem = Item.limit(1).offset(randNum)
    
  end
  
  private
  def randNum
    rand(Item.all.length)
  end
  


end

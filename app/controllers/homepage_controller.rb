class HomepageController < ApplicationController
  def show

      @randItem = Item.limit(1).offset(randNum)
      @popItems = Item.limit(3).order(popularity: :desc)

  end

  def helpAndSupp
  end

  
  private
  def randNum
    rand(Item.all.length)
  end
  
end

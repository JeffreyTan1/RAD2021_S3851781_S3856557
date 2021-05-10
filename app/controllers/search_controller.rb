class SearchController < ApplicationController
  def searchpage
    @items = Item.all
  end
end

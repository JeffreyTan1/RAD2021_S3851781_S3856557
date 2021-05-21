class SavedListsController < ApplicationController
  before_action :set_saved_list, only: %i[ show edit update destroy ]

  # GET /saved_lists or /saved_lists.json
  def index
    @saved_lists = SavedList.all
  end

  # GET /saved_lists/1 or /saved_lists/1.json
  def show
    if current_user 
      @items = @saved_list.items
    else
      redirect_to new_session_path
    end
  end

  # GET /saved_lists/new
  def new
    @saved_list = SavedList.new
  end

  # GET /saved_lists/1/edit
  def edit
  end
  
  def toggleList
    if current_user
      item = Item.find_by(id: params[:id])
      savedList = current_user.saved_list
      if !savedList.items.include? item
        addToList(params[:id])
        redirect_to root_path
      else
        removeFromList(params[:id])
        #redirect_to show_user_saved_list_path(:id => current_user.id)
        redirect_to root_path
      end
    else
      redirect_to new_session_path
    end
  end
  
  # POST /saved_lists or /saved_lists.json
  def create
    @saved_list = SavedList.new(saved_list_params)

    respond_to do |format|
      if @saved_list.save
        format.html { redirect_to @saved_list, notice: "Saved list was successfully created." }
        format.json { render :show, status: :created, location: @saved_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @saved_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_lists/1 or /saved_lists/1.json
  def update
    respond_to do |format|
      if @saved_list.update(saved_list_params)
        format.html { redirect_to @saved_list, notice: "Saved list was successfully updated." }
        format.json { render :show, status: :ok, location: @saved_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @saved_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_lists/1 or /saved_lists/1.json
  def destroy
    @saved_list.destroy
    respond_to do |format|
      format.html { redirect_to saved_lists_url, notice: "Saved list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_list
      user = User.find_by(id: params[:id])
      @saved_list = user.saved_list
    end
  
    # Only allow a list of trusted parameters through.
    def saved_list_params
      params.require(:saved_list).permit(:user_id)
    end
    
    def addToList(item_id)
      item = Item.find_by(id: item_id)
      user = current_user
      savedList = user.saved_list
      savedList.items << item unless savedList.items.include?(item)
      
      #add 1 to the popularity value
      if savedList.items.include?(item)
        currentPop = item.popularity
        item.popularity = currentPop + 1
        item.save
      end
    end
  
    def removeFromList(item_id)
      item = Item.find_by(id: item_id)
      user = current_user
      savedList = user.saved_list
      savedList.items.destroy(item)
      
      currentPop = item.popularity
      item.popularity = currentPop - 1
      item.save
    end
end

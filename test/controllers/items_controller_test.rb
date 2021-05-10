require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
<<<<<<< HEAD
      post items_url, params: { item: { collection: @item.collection, description: @item.description, image: @item.image, name: @item.name, popularity: @item.popularity, price: @item.price } }
=======
      post items_url, params: { item: {  } }
>>>>>>> 0fa55d26c19cc9f18940f17690863f2ac885da78
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
<<<<<<< HEAD
    patch item_url(@item), params: { item: { collection: @item.collection, description: @item.description, image: @item.image, name: @item.name, popularity: @item.popularity, price: @item.price } }
=======
    patch item_url(@item), params: { item: {  } }
>>>>>>> 0fa55d26c19cc9f18940f17690863f2ac885da78
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end

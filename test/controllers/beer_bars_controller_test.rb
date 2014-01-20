require 'test_helper'

class BeerBarsControllerTest < ActionController::TestCase
  setup do
    @beer_bar = beer_bars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_bars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_bar" do
    assert_difference('BeerBar.count') do
      post :create, beer_bar: { address: @beer_bar.address, bb_id: @beer_bar.bb_id, datecreated: @beer_bar.datecreated, description: @beer_bar.description, name: @beer_bar.name, state: @beer_bar.state, website: @beer_bar.website, zipcode: @beer_bar.zipcode }
    end

    assert_redirected_to beer_bar_path(assigns(:beer_bar))
  end

  test "should show beer_bar" do
    get :show, id: @beer_bar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_bar
    assert_response :success
  end

  test "should update beer_bar" do
    patch :update, id: @beer_bar, beer_bar: { address: @beer_bar.address, bb_id: @beer_bar.bb_id, datecreated: @beer_bar.datecreated, description: @beer_bar.description, name: @beer_bar.name, state: @beer_bar.state, website: @beer_bar.website, zipcode: @beer_bar.zipcode }
    assert_redirected_to beer_bar_path(assigns(:beer_bar))
  end

  test "should destroy beer_bar" do
    assert_difference('BeerBar.count', -1) do
      delete :destroy, id: @beer_bar
    end

    assert_redirected_to beer_bars_path
  end
end

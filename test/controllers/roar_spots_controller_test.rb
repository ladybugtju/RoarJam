require 'test_helper'

class RoarSpotsControllerTest < ActionController::TestCase
  setup do
    @roar_spot = roar_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roar_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roar_spot" do
    assert_difference('RoarSpot.count') do
      post :create, roar_spot: { address: @roar_spot.address, name: @roar_spot.name, phone: @roar_spot.phone, website: @roar_spot.website }
    end

    assert_redirected_to roar_spot_path(assigns(:roar_spot))
  end

  test "should show roar_spot" do
    get :show, id: @roar_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roar_spot
    assert_response :success
  end

  test "should update roar_spot" do
    patch :update, id: @roar_spot, roar_spot: { address: @roar_spot.address, name: @roar_spot.name, phone: @roar_spot.phone, website: @roar_spot.website }
    assert_redirected_to roar_spot_path(assigns(:roar_spot))
  end

  test "should destroy roar_spot" do
    assert_difference('RoarSpot.count', -1) do
      delete :destroy, id: @roar_spot
    end

    assert_redirected_to roar_spots_path
  end
end

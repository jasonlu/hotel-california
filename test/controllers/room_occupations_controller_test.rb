require 'test_helper'

class RoomOccupationsControllerTest < ActionController::TestCase
  setup do
    @room_occupation = room_occupations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_occupations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_occupation" do
    assert_difference('RoomOccupation.count') do
      post :create, room_occupation: { booking_id_id: @room_occupation.booking_id_id, days: @room_occupation.days, end_at: @room_occupation.end_at, start_at: @room_occupation.start_at }
    end

    assert_redirected_to room_occupation_path(assigns(:room_occupation))
  end

  test "should show room_occupation" do
    get :show, id: @room_occupation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_occupation
    assert_response :success
  end

  test "should update room_occupation" do
    patch :update, id: @room_occupation, room_occupation: { booking_id_id: @room_occupation.booking_id_id, days: @room_occupation.days, end_at: @room_occupation.end_at, start_at: @room_occupation.start_at }
    assert_redirected_to room_occupation_path(assigns(:room_occupation))
  end

  test "should destroy room_occupation" do
    assert_difference('RoomOccupation.count', -1) do
      delete :destroy, id: @room_occupation
    end

    assert_redirected_to room_occupations_path
  end
end

require 'test_helper'

class RoomTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:room_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_room_type
    assert_difference('RoomType.count') do
      post :create, :room_type => { }
    end

    assert_redirected_to room_type_path(assigns(:room_type))
  end

  def test_should_show_room_type
    get :show, :id => room_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => room_types(:one).id
    assert_response :success
  end

  def test_should_update_room_type
    put :update, :id => room_types(:one).id, :room_type => { }
    assert_redirected_to room_type_path(assigns(:room_type))
  end

  def test_should_destroy_room_type
    assert_difference('RoomType.count', -1) do
      delete :destroy, :id => room_types(:one).id
    end

    assert_redirected_to room_types_path
  end
end

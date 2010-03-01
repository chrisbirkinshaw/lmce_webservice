require 'test_helper'

class DeviceGroupsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:device_groups)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_device_group
    assert_difference('DeviceGroup.count') do
      post :create, :device_group => { }
    end

    assert_redirected_to device_group_path(assigns(:device_group))
  end

  def test_should_show_device_group
    get :show, :id => device_groups(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => device_groups(:one).id
    assert_response :success
  end

  def test_should_update_device_group
    put :update, :id => device_groups(:one).id, :device_group => { }
    assert_redirected_to device_group_path(assigns(:device_group))
  end

  def test_should_destroy_device_group
    assert_difference('DeviceGroup.count', -1) do
      delete :destroy, :id => device_groups(:one).id
    end

    assert_redirected_to device_groups_path
  end
end

require 'test_helper'

class DeviceTemplatesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:device_templates)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_device_template
    assert_difference('DeviceTemplate.count') do
      post :create, :device_template => { }
    end

    assert_redirected_to device_template_path(assigns(:device_template))
  end

  def test_should_show_device_template
    get :show, :id => device_templates(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => device_templates(:one).id
    assert_response :success
  end

  def test_should_update_device_template
    put :update, :id => device_templates(:one).id, :device_template => { }
    assert_redirected_to device_template_path(assigns(:device_template))
  end

  def test_should_destroy_device_template
    assert_difference('DeviceTemplate.count', -1) do
      delete :destroy, :id => device_templates(:one).id
    end

    assert_redirected_to device_templates_path
  end
end

require 'test_helper'

class InstallationsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:installations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_installation
    assert_difference('Installation.count') do
      post :create, :installation => { }
    end

    assert_redirected_to installation_path(assigns(:installation))
  end

  def test_should_show_installation
    get :show, :id => installations(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => installations(:one).id
    assert_response :success
  end

  def test_should_update_installation
    put :update, :id => installations(:one).id, :installation => { }
    assert_redirected_to installation_path(assigns(:installation))
  end

  def test_should_destroy_installation
    assert_difference('Installation.count', -1) do
      delete :destroy, :id => installations(:one).id
    end

    assert_redirected_to installations_path
  end
end

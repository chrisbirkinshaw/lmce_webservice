require 'test_helper'

class CommandGroupsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:command_groups)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_command_group
    assert_difference('CommandGroup.count') do
      post :create, :command_group => { }
    end

    assert_redirected_to command_group_path(assigns(:command_group))
  end

  def test_should_show_command_group
    get :show, :id => command_groups(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => command_groups(:one).id
    assert_response :success
  end

  def test_should_update_command_group
    put :update, :id => command_groups(:one).id, :command_group => { }
    assert_redirected_to command_group_path(assigns(:command_group))
  end

  def test_should_destroy_command_group
    assert_difference('CommandGroup.count', -1) do
      delete :destroy, :id => command_groups(:one).id
    end

    assert_redirected_to command_groups_path
  end
end

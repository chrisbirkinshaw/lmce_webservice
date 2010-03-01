require 'test_helper'

class CommandGroupCommandsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:command_group_commands)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_command_group_command
    assert_difference('CommandGroupCommand.count') do
      post :create, :command_group_command => { }
    end

    assert_redirected_to command_group_command_path(assigns(:command_group_command))
  end

  def test_should_show_command_group_command
    get :show, :id => command_group_commands(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => command_group_commands(:one).id
    assert_response :success
  end

  def test_should_update_command_group_command
    put :update, :id => command_group_commands(:one).id, :command_group_command => { }
    assert_redirected_to command_group_command_path(assigns(:command_group_command))
  end

  def test_should_destroy_command_group_command
    assert_difference('CommandGroupCommand.count', -1) do
      delete :destroy, :id => command_group_commands(:one).id
    end

    assert_redirected_to command_group_commands_path
  end
end

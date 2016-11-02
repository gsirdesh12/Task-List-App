require 'test_helper'

class TaskksControllerTest < ActionController::TestCase
  setup do
    @taskk = taskks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskk" do
    assert_difference('Taskk.count') do
      post :create, taskk: { description: @taskk.description, due_date: @taskk.due_date, is_completed_toggle: @taskk.is_completed_toggle, priority: @taskk.priority, task_list_id: @taskk.task_list_id, title: @taskk.title }
    end

    assert_redirected_to taskk_path(assigns(:taskk))
  end

  test "should show taskk" do
    get :show, id: @taskk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskk
    assert_response :success
  end

  test "should update taskk" do
    patch :update, id: @taskk, taskk: { description: @taskk.description, due_date: @taskk.due_date, is_completed_toggle: @taskk.is_completed_toggle, priority: @taskk.priority, task_list_id: @taskk.task_list_id, title: @taskk.title }
    assert_redirected_to taskk_path(assigns(:taskk))
  end

  test "should destroy taskk" do
    assert_difference('Taskk.count', -1) do
      delete :destroy, id: @taskk
    end

    assert_redirected_to taskks_path
  end
end

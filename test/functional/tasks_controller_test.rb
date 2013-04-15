require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { contact_name: @task.contact_name, deadline: @task.deadline, details: @task.details, email: @task.email, organization_description: @task.organization_description, organization_name: @task.organization_name, organization_url: @task.organization_url, title: @task.title, wufoo_link: @task.wufoo_link }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { contact_name: @task.contact_name, deadline: @task.deadline, details: @task.details, email: @task.email, organization_description: @task.organization_description, organization_name: @task.organization_name, organization_url: @task.organization_url, title: @task.title, wufoo_link: @task.wufoo_link }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end

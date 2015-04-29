require 'test_helper'

class WorklistsControllerTest < ActionController::TestCase
  setup do
    @worklist = worklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worklist" do
    assert_difference('Worklist.count') do
      post :create, worklist: { name: @worklist.name, nextworklist: @worklist.nextworklist, status: @worklist.status }
    end

    assert_redirected_to worklist_path(assigns(:worklist))
  end

  test "should show worklist" do
    get :show, id: @worklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worklist
    assert_response :success
  end

  test "should update worklist" do
    patch :update, id: @worklist, worklist: { name: @worklist.name, nextworklist: @worklist.nextworklist, status: @worklist.status }
    assert_redirected_to worklist_path(assigns(:worklist))
  end

  test "should destroy worklist" do
    assert_difference('Worklist.count', -1) do
      delete :destroy, id: @worklist
    end

    assert_redirected_to worklists_path
  end
end

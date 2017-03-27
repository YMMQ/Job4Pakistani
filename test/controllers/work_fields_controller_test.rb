require 'test_helper'

class WorkFieldsControllerTest < ActionController::TestCase
  setup do
    @work_field = work_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_field" do
    assert_difference('WorkField.count') do
      post :create, work_field: { field_name: @work_field.field_name }
    end

    assert_redirected_to work_field_path(assigns(:work_field))
  end

  test "should show work_field" do
    get :show, id: @work_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_field
    assert_response :success
  end

  test "should update work_field" do
    patch :update, id: @work_field, work_field: { field_name: @work_field.field_name }
    assert_redirected_to work_field_path(assigns(:work_field))
  end

  test "should destroy work_field" do
    assert_difference('WorkField.count', -1) do
      delete :destroy, id: @work_field
    end

    assert_redirected_to work_fields_path
  end
end

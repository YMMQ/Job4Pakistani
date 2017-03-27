require 'test_helper'

class DegresControllerTest < ActionController::TestCase
  setup do
    @degre = degres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:degres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create degre" do
    assert_difference('Degre.count') do
      post :create, degre: { drege_type: @degre.drege_type, name: @degre.name }
    end

    assert_redirected_to degre_path(assigns(:degre))
  end

  test "should show degre" do
    get :show, id: @degre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @degre
    assert_response :success
  end

  test "should update degre" do
    patch :update, id: @degre, degre: { drege_type: @degre.drege_type, name: @degre.name }
    assert_redirected_to degre_path(assigns(:degre))
  end

  test "should destroy degre" do
    assert_difference('Degre.count', -1) do
      delete :destroy, id: @degre
    end

    assert_redirected_to degres_path
  end
end

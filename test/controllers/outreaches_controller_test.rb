require 'test_helper'

class OutreachesControllerTest < ActionController::TestCase
  setup do
    @outreach = outreaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outreaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outreach" do
    assert_difference('Outreach.count') do
      post :create, outreach: { description: @outreach.description, image: @outreach.image, name: @outreach.name }
    end

    assert_redirected_to outreach_path(assigns(:outreach))
  end

  test "should show outreach" do
    get :show, id: @outreach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outreach
    assert_response :success
  end

  test "should update outreach" do
    patch :update, id: @outreach, outreach: { description: @outreach.description, image: @outreach.image, name: @outreach.name }
    assert_redirected_to outreach_path(assigns(:outreach))
  end

  test "should destroy outreach" do
    assert_difference('Outreach.count', -1) do
      delete :destroy, id: @outreach
    end

    assert_redirected_to outreaches_path
  end
end

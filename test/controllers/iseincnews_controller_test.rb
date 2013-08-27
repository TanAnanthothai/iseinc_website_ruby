require 'test_helper'

class IseincnewsControllerTest < ActionController::TestCase
  setup do
    @iseincnews = iseincnews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iseincnews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iseincnews" do
    assert_difference('Iseincnews.count') do
      post :create, iseincnews: { description: @iseincnews.description, image: @iseincnews.image, title: @iseincnews.title }
    end

    assert_redirected_to iseincnews_path(assigns(:iseincnews))
  end

  test "should show iseincnews" do
    get :show, id: @iseincnews
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iseincnews
    assert_response :success
  end

  test "should update iseincnews" do
    patch :update, id: @iseincnews, iseincnews: { description: @iseincnews.description, image: @iseincnews.image, title: @iseincnews.title }
    assert_redirected_to iseincnews_path(assigns(:iseincnews))
  end

  test "should destroy iseincnews" do
    assert_difference('Iseincnews.count', -1) do
      delete :destroy, id: @iseincnews
    end

    assert_redirected_to iseincnews_index_path
  end
end

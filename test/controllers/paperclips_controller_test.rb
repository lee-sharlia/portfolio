require 'test_helper'

class PaperclipsControllerTest < ActionController::TestCase
  setup do
    @paperclip = paperclips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paperclips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paperclip" do
    assert_difference('Paperclip.count') do
      post :create, paperclip: { image: @paperclip.image }
    end

    assert_redirected_to paperclip_path(assigns(:paperclip))
  end

  test "should show paperclip" do
    get :show, id: @paperclip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paperclip
    assert_response :success
  end

  test "should update paperclip" do
    patch :update, id: @paperclip, paperclip: { image: @paperclip.image }
    assert_redirected_to paperclip_path(assigns(:paperclip))
  end

  test "should destroy paperclip" do
    assert_difference('Paperclip.count', -1) do
      delete :destroy, id: @paperclip
    end

    assert_redirected_to paperclips_path
  end
end

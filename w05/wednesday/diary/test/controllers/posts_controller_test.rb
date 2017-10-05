require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @post = posts(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, params: { user_id: @user, post: @post.attributes }
    end

    assert_redirected_to user_post_path(@user, Post.last)
  end

  test "should show post" do
    get :show, params: { user_id: @user, id: @post }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @post }
    assert_response :success
  end

  test "should update post" do
    put :update, params: { user_id: @user, id: @post, post: @post.attributes }
    assert_redirected_to user_post_path(@user, Post.last)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, params: { user_id: @user, id: @post }
    end

    assert_redirected_to user_posts_path(@user)
  end
end

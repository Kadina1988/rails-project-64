# frozen_string_literal: true

require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @post = posts(:one)
    @attrs = {
      title: 'New post',
      body: 'Text',
      category_id: Category.last.id,
      creator: 'one@mail.ru'
    }
  end

  test 'get index' do
    get posts_path
    assert_response :success
  end

  test 'get should create post' do
    sign_in users(:one)
    assert_difference('Post.count') do
      post '/posts', params: { post: @attrs }
    end
    assert_redirected_to post_path(Post.last)
  end

  test 'should show' do
    get post_path(@post)
    assert_response :success
  end

  test 'should new' do
    if sign_in users(:one)
      get new_post_path
      assert_response :success
    else
      assert_response 302
    end
  end
end

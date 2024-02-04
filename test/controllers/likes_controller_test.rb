# frozen_string_literal: true

require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @current_user = users(:one)
    @attrs = {
      user_id: @current_user.id
    }
  end

  test 'create like' do
    sign_in users(:one)
    @post = posts(:one)
    assert_difference('PostLike.count') do
      post "/posts/#{@post.id}/likes", params: { post: @attrs }
    end
    assert_redirected_to post_path(@post)
  end

  test 'delete like' do
    sign_in users(:one)
    like = post_likes(:one)
    assert_difference('PostLike.count', -1) do
      delete post_like_path(like.post, like)
    end

    assert_redirected_to post_path(like.post)
  end
end

# frozen_string_literal: true

require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @current_user = users(:two)
    @attrs = {
      user_id: @current_user.id
    }
  end

  test 'create like' do
    sign_in users(:one)
    @post = posts(:two)
    assert_difference('PostLike.count') do
      post "/posts/#{@post.id}/likes", params: { post: @attrs }
    end
    assert_redirected_to post_path(@post, locale: :en)
  end

  test 'destroy like' do
    like = post_likes(:one)
    sign_in users(:one)
    assert_difference('PostLike.count', -1) do
      delete post_like_path(like.post, like)
    end

    assert_redirected_to post_path(like.post, locale: :en)
  end
end

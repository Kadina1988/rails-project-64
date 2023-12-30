# frozen_string_literal: true

require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test 'create like' do
    @post = posts(:one)
    assert_difference('PostLike.count') do
      post "/posts/#{@post.id}/likes"
    end
    assert_redirected_to post_path(@post)
  end
end

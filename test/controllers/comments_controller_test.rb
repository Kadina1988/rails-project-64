# frozen_string_literal: true

require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @post = posts(:one)

    @attr = {
      content: 'Comment',
      ancestry: nil
    }
  end

  test 'get should create post comment' do
    sign_in users(:one)
    assert_difference('PostComment.count') do
      post "/posts/#{@post.id}/comments", params: { post_comment: @attr }
    end
    assert_redirected_to post_path(@post, locale: :en)
  end
end

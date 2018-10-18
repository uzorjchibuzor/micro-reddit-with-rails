require 'test_helper'

class CommentTest < ActiveSupport::TestCase
 

  def setup
    @user = User.create(name:"David", email:"david@yahoo.com")
    @post = Post.create(title:"Example", url: "www.userexaample.com", user_id: @user.id)
    @comment = Comment.new(body:"I am not very confident that this test will pass", user_id: @user.id, post_id: @post.id)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "body should not be empty" do
    @comment.body = "  "
    assert_not @comment.valid?
  end

  test "body should not be longer than 140 chars" do
    @comment.body = "a" * 141
    assert_not @comment.valid?
  end

  test "comment must have a user_id assigned" do
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "comment must have a post_id assigned" do
    @comment.post_id = nil
    assert_not @comment.valid?
  end

end

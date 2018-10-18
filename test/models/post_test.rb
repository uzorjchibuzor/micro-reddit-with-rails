require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title:"Example", url: "www.userexaample.com",user_id: 1)
  end 
  # test "should be valid" do
  #   assert @post.valid?
  # end

  test "title should not be empty" do
    @post.title = "   "
    assert_not @post.valid?
  end
  test "title should not be too long" do
    @post.title = "a"*20
    assert_not @post.valid?
  end
  test "url should not be empty" do
    @post.url = "   "
    assert_not @post.valid?
  end
end

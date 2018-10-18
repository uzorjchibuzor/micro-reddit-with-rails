require 'test_helper'
 

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name:"David", email:"david@yahoo.com")
    @post = Post.create(title:"Example", url: "www.userexaample.com", user_id: @user.id)
  end 

  
  test "should be valid" do
    assert @post.valid?
  end

  test "title should not be empty" do
    @post.title = "    "
    assert_not @post.valid?
  end

  test "title should not be too long" do
    @post.title = "a"*31
    assert_not @post.valid?
  end

  test "url should not be empty" do
    @post.url = "   "
    assert_not @post.valid?
  end
end

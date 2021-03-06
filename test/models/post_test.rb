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
  
  test "User.post.build is valid" do
    post = @user.posts.build();
    assert @post.user_id == @user.id
  end

  test "title should not be too long" do
    @post.title = "a"*31
    assert_not @post.valid?
  end

  test "post must have a user_id assigned" do
    @post.user_id = nil
    assert_not @post.valid?
  end

  test "url should not be empty" do
    @post.url = "   "
    assert_not @post.valid?
  end
end

require 'test_helper'

class PostTest < ActiveSupport::TestCase
 def setup
   @post = Post.new(content: "スポーツジム")
 end
 
 test "content should be present" do
   @post.content = "  "
   assert_not @post.valid?
 end
 
 test "content should be at most 30 characters" do
   @post.content = "a" * 31
   assert_not @post.valid?
 end
end

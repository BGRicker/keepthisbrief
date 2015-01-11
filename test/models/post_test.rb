require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "valid_post" do
    post = Post.create(:name => 'Test Review', :review => 'This is a test.', :rating => 4)
    puts post.inspect
  end
end

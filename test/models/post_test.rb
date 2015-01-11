require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "valid_post" do
    post = Post.create(:name => 'Test Review', :review => 'This is a test.')
  end
end

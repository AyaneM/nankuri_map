require 'test_helper'

class ApplicationhelperTest < ActionView::TestCase
  test "full_title helper" do
    assert_equal full_title, "nankuri_map"
    assert_equal full_title("Help"), "Help|nankuri_map"
  end
end
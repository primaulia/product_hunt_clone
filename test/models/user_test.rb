require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "full_name returns the capitalized last name only if only have last name" do
    user = User.new(last_name: "gusta")
    assert_equal "Gusta", user.full_name
  end
end

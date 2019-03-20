require 'minitest/autorun'
require 'minitest/pride'
require '../lib/joke'
require '../lib/user'

class UserTest < Minitest::Test
  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @user = User.new("Sal")
  end

  def test_it_exists
    assert_instance_of User, @user
  end
end

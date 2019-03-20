require 'minitest/autorun'
require 'minitest/pride'
require '../lib/joke'
require '../lib/user'

class UserTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @user = User.new("Sal")
  end

  def test_it_exists
    assert_instance_of User, @user
  end

  def test_it_has_argument_attributes
    assert_equal "Sal", @user.name
    assert_equal [], @user.jokes
  end
end

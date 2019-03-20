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
  end

  def test_it_starts_with_no_jokes
    assert_equal [], @user.jokes
  end

  def test_it_can_learn_one_joke
    @user.learn(@joke_1)

    assert_equal @joke_1, @user.jokes[0]
  end

  def test_it_can_learn_two_jokes
    @user.learn(@joke_1)
    @user.learn(@joke_2)

    assert_equal @joke_2, @user.jokes[1]
    assert_equal 2, @user.jokes.length
  end
end

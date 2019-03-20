require 'minitest/autorun'
require 'minitest/pride'
require '../lib/joke'
class JokeTest < Minitest::Test
  def setup
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Becausehis mother was in a jam.")
  end

  def test_it_exists
    assert_instance_of Joke, @joke
  end
end

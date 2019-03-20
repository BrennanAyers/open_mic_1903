require 'minitest/autorun'
require 'minitest/pride'
require '../lib/open_mic'
require '../lib/user'
require '../lib/joke'

class OpenMicTest < Minitest::Test
  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-19"})
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_argument_attributes
    assert_equal "Comedy Works", @open_mic.location
    assert_equal "11-20-19", @open_mic.date
  end
end
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

  def test_it_starts_with_no_performers
    assert_equal [], @open_mic.performers
  end

  def test_it_can_welcome_new_performers
    @open_mic.welcome(@sal)

    assert_equal @sal, @open_mic.performers[0]

    @open_mic.welcome(@ali)

    assert_equal @ali, @open_mic.performers[1]
    assert_equal 2, @open_mic.performers.length
  end

  def test_it_does_not_start_with_repeated_jokes
    refute @open_mic.repeated_jokes?
  end

  def test_it_knows_when_a_joke_has_been_repeated
    @sal.learn(@joke_1)
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    @sal.tell(@ali, @joke_1)

    assert @open_mic.repeated_jokes?
  end
end

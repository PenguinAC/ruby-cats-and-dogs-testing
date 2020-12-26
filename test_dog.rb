require "minitest/autorun"
require_relative "dog"

class TestDog < MiniTest::Test
  def setup
    @dog = Dog.new()
  end
  def test_that_dog_has_breed
    assert_nil @dog.breed
    refute_equal "chihuahua", @dog.breed
  end
  def test_that_dog_can_set_breed
    @dog.breed = "chihuahua"
    assert_equal "chihuahua", @dog.breed
  end
end
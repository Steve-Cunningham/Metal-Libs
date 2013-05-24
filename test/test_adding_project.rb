require_relative 'test_helper'

class TestAddingMetalLib < MiniTest::Unit::TestCase
    include DatabaseCleaner

  def test_adding_song
    assert_equal 0, MetalLib.count
    MetalLib.create( user_input: 'asdflkjasdf')
    assert_equal 1, MetalLib.count
  end
end

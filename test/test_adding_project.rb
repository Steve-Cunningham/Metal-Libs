require_relative 'test_helper'

class TestAddingMetalLib < MiniTest::Unit::TestCase
    include DatabaseCleaner

  def test_adding_song
    assert_equal 0, MetalLib.count
    MetalLib.create( user_input: 'asdflkjasdf')
    assert_equal 1, MetalLib.count
  end

  def test_pluck
    MetalLib.create( user_input: 'one')
    MetalLib.create( user_input: 'two')
    x = MetalLib.pluck(:user_input)
    assert_equal x, ["one", "two"]
    assert_equal ["#{x[0]}", "#{x[1]}"], ["one", "two"]
  end

end

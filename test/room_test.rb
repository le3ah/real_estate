require './lib/room'
require 'minitest/autorun'
require 'minitest/pride'

class RoomTest < Minitest::Test

def test_room_exists
  room = Room.new(:bedroom, 10, 13)
  assert_instance_of Room, room
end

def test_room_is_a_category
  room = Room.new(:bedroom, 10, 13)
  assert_equal :bedroom, room.category
end

def test_room_has_an_area
  room = Room.new(:bedroom, 10, 13)
  assert_equal 130, room.area 
end

end

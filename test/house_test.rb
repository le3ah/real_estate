require './lib/room'
require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'

class HouseTest < Minitest::Test

  def test_house_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_house_has_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal "$400000", house.price
  end

  def test_house_has_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_house_rooms_start_empty
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_house_can_add_one_room
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    assert_equal 1, house.add_room(room_1).count
  end

  def test_house_can_add_multiple_rooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    assert_equal 4, house.add_room(room_4).count
  end

  def test_house_selects_rooms_by_category
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal 2, house.rooms_from_category(:bedroom).count
    #assert_equal 1, house.rooms_from_category(:basement).count
  end
  def test_area
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal 1900, house.area
  end 

end

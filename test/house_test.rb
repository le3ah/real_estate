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

  # def test
  #   house = House.new("$400000", "123 sugar lane")
  #   room_1 = Room.new(:bedroom, 10, 13)
  #   assert_instance_of Room, room_1
  # end

end

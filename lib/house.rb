require './lib/room'

class House

attr_reader :price, :address, :rooms
def initialize(price, address)
  @price = "$400000"
  @address = "123 sugar lane"
  @rooms = []
end

def add_room(room)
  @room = Room.new(@category, @length, @width)
  @rooms << room
end

# def rooms_from_category(category)
#   @rooms[category]
#
# end

end

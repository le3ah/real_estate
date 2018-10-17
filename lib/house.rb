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

def rooms_from_category(category)
  @rooms.each do |room|
  rooms[0].category == :bedroom
  end
  @rooms
end
def area
# iterate over each room with w * l and then sum
@width * @length 
end

end

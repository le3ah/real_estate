class Room

attr_accessor :category
def initialize(category = :bedroom, length = 10, width = 13)
  @category = category
  @length = length
  @width = width
end

def area
  room.each do |width, length|
  @length * @width
end 
end

end

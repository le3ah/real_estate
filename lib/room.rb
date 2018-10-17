class Room

attr_accessor :category
def initialize(category = :bedroom, length = 10, width = 13)
  @category = category
  @length = length
  @width = width
end

def area
  @length * @width
end

end

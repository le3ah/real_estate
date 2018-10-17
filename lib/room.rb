class Room

attr_reader :category
def initialize(category, length, width)
  @category = :bedroom
  @length = 10
  @width = 13
end

def area
  @length * @width
end

end

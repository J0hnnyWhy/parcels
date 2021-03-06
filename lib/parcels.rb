class Parcel

  define_method(:initialize) do |height, length, depth, weight|
  @height = height
  @length = length
  @depth = depth
  @weight = weight
  end

  define_method(:volume) do
     @length * @height * @depth
  end

  define_method(:cost_to_ship) do
    cost = @weight * volume() / 100
    if cost < 5
      cost = 5
    end
    return cost
  end
end

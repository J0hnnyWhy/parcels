class Parcel

  define_method(:initialize) do |height, length, depth, weight|
  @height = height
  @length = length
  @depth = depth
  @weight = weight
  end

  define_method(:height) do
    @height
  end

  define_method(:length) do
    @length
  end

  define_method(:depth) do
    @depth
  end

  define_method(:weight) do
    @weight
  end
end

class Places

  @@all_locations = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_method(:save) do
    @@all_locations.push(self)
  end

  define_singleton_method(:all) do
    @@all_locations
  end

  define_singleton_method(:clear) do
    @@all_locations = []
  end

end

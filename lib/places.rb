class Places

  @@location = []

  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    @location
  end

  define_method(:save) do
    @@location.push(@location)
  end

  define_singleton_method(:all) do
    @@location
  end

  define_singleton_method(:clear) do
    @@location = []
  end
  
end

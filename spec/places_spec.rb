require('rspec')
require('places')

describe(Location) do
  before() do
    Places.clear()
  end

  describe('#locations') do
    it('places to visit') do
      places = Places.new('Paris')
      expect(places.location()).to(eq('Paris'))
    end
  end
end

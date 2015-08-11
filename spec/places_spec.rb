require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

  describe('#locations') do
    it('places to visit') do
      places = Places.new('Paris')
      expect(places.location()).to(eq('Paris'))
    end
  end
  describe('#save') do
    it('saves locations to index page') do
      places = Places.new('New York')
      places.save()
      expect(Places.all()).to(eq(['New York']))
    end
  end
  describe('#all') do
    it('shows empty list on index page') do
      expect(Places.all()).to(eq([]))
    end
  end
  describe('.clear') do
    it('clears list on index page')do
    Places.new('Seattle').save()
    Places.clear()
    expect(Places.all()).to(eq([]))
    end
  end
end

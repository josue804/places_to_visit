require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('/lib/**/*.rb')

get('/') do
  @places = Places.all()
  erb(:index)
end

post('/results') do
  location = params.fetch('location')
  place = Places.new(location)
  place.save()
  erb(:results)
end

post('/clear') do
  Places.clear()
  erb(:clear)
end

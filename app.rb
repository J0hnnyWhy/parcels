require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/results') do
  length = params.fetch('length').to_i
  height = params.fetch('height').to_i
  depth = params.fetch('depth').to_i
  weight = params.fetch('weight').to_i

  x = Parcel.new(length, height, depth, weight)
  @cost_to_ship = x.cost_to_ship
  erb(:results)
end

require "rails_helper"

RSpec.describe "routes for movies", type: :routing do
  it 'routes GET /movies/movies-batch to movies#movies_batch' do
  expect(get: '/movies/movies-batch').to route_to('movies#movies_batch')
end
it 'routes POST /movies/upload_json to movies#upload_json' do
expect(post: '/movies/upload_json').to route_to('movies#upload_json')
end

it 'routes GET /movies to movies#index' do
expect(get: '/movies').to route_to('movies#index')
end

it 'routes GET /movies/new to movies#new' do
expect(get: '/movies/new').to route_to('movies#new')
end

it 'routes POST /movies to movies#create' do
expect(post: '/movies').to route_to('movies#create')
end


it 'routes GET /movies/movies-batch to movies#movies_batch' do
expect(get: '/movies/movies-batch').to route_to('movies#movies_batch')
end
it 'routes POST /movies/upload_json to movies#upload_json' do
expect(post: '/movies/upload_json').to route_to('movies#upload_json')
end


end

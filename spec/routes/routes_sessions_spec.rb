require "rails_helper"

RSpec.describe "routes for sessios and user", type: :routing do
  it 'routes GET /users/new to users#new' do
  expect(get: '/users/new').to route_to('users#new')
end

it 'routes POST /users to users#create' do
  expect(post: '/users').to route_to('users#create')
end

it 'routes GET /sessions/new to sessions#new' do
  expect(get: '/sessions/new').to route_to('sessions#new')
end

it 'routes POST /sessions to sessions#create' do
  expect(post: '/sessions').to route_to('sessions#create')
end

end

require "rails_helper"

RSpec.describe "routes for login", type: :routing do
  it 'routes GET /login to sessions#new' do
  expect(get: '/login').to route_to('sessions#new')
  end

  it 'routes DELETE /logout to sessions#destroy' do
  expect(delete: '/logout').to route_to('sessions#destroy')
  end

end

require 'rails_helper'

  RSpec.describe User, type: :model do
    describe 'validations' do
      it 'is valid with valid attributes' do
        user = User.new(username: 'testuser', email: 'test@example.com', password: 'password')
        expect(user).to be_valid
      end
    end

    describe 'associations' do
      it 'can have many movies through user_movies' do
        user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
        movie1 = user.movies.create(title: 'Test Movie 1', director: 'Director 1')
        movie2 = user.movies.create(title: 'Test Movie 2', director: 'Director 2')

        expect(user.movies.count).to eq(2)
      end
    end
  end

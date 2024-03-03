
require 'rails_helper'

RSpec.describe UserMovie, type: :model do
  describe 'associations' do
    it 'belongs to a user' do
      user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
      movie = Movie.create(title: 'Test Movie', director: 'Test Director')
      user_movie = UserMovie.create(user: user, movie: movie)

      expect(user_movie.user).to eq(user)
    end

    it 'belongs to a movie' do
      user = User.create(username: 'testuser', email: 'test@example.com', password: 'password')
      movie = Movie.create(title: 'Test Movie', director: 'Test Director')
      user_movie = UserMovie.create(user: user, movie: movie)

      expect(user_movie.movie).to eq(movie)
    end
  end
end

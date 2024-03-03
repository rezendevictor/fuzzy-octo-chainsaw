require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      movie = Movie.new(title: 'Test Movie', director: 'Test Director')
      expect(movie).to be_valid
    end
  end

  describe 'methods' do
    movie = Movie.new(title: 'Test Movie', director: 'Test Director')
    it 'returns the correct director' do
      expect(movie.average_score).to eq(0)
    end
  end
end

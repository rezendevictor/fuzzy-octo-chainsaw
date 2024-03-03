class MyFirstJobWorker
  include Sidekiq::Worker
  def perform(movie_data)
    movie_data.each do |element|
      @movie = Movie.new(title: element['title'], director: element['director'])
      if @movie.save
        puts "Movie successfully uploaded"
      end
      puts element
    end
  end
end

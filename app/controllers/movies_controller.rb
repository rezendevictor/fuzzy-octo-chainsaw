class MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = Movie.all
    respond_to do |format|
      format.html
      format.json { render json: @movies.to_json(methods: :average_score) }
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Movie was successfully created."
    else
      render :new
    end
  end

  def upload_json
    uploaded_file = params[:json_file]
    if uploaded_file.present?
      movie_data = JSON.parse(uploaded_file.read)
      CreateMoviesWorker.perform_async(movie_data)
      redirect_to movies_path
    else
      puts 'Did not Work\n'
    end
  end

  def movies_batch
  end


  private
  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end

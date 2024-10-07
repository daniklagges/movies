# app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def edit
    @movie = Movie.find(params[:id])
    @customers = Customer.all # Mostrar todos los clientes para asignar la película
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path, notice: 'Movie updated successfully'
    else
      render :edit
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :available, customer_ids: [])
  end
end

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:location].present?
      @movies = @movies.where(location: params[:location])
    end
  end
end

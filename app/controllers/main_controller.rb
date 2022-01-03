class MainController < ApplicationController
  def search
    @movies = Movie.all
    @movies = @movies.search(params[:q].downcase) if params[:q].present?
    @directors = Director.all
    @directors = @directors.search(params[:q].downcase) if params[:q].present?
  end
end

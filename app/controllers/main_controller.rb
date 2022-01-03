class MainController < ApplicationController
  def search
    @movies = Movie.all
    @movies = @movies.search(params[:q].downcase) if params[:q].present?
    @directors = Director.all
    @directors = @directors.search(params[:q].downcase) if params[:q].present?
  end

  def autocomplete
    @movies = Movie.all
    @movies = @movies.autocomplete(params[:q].downcase).limit(4) if params[:q].present?
    @directors = Director.all
    @directors = @directors.search(params[:q].downcase).limit(4) if params[:q].present?
    render layout: false
  end
end

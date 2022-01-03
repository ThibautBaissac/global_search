class DirectorsController < ApplicationController
  before_action :set_director, only: %i[ show ]

  def index
    @directors = Director.all
  end

  def show
  end

  private
    def set_director
      @director = Director.find(params[:id])
    end

    def director_params
      params.require(:director).permit(:name)
    end
end

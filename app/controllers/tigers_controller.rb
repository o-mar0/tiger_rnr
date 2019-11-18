class TigersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_tiger, only: %i[show]

  def index
    @tigers = Tiger.all
  end

  def show
    # @tiger = Tiger.find(params[:id])
  end

  def new
    @tiger = Tiger.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def find_tiger
    @tiger = Tiger.find(params[:id])
  end

  def tiger_params
    params.require(:tiger).permit()
  end
end

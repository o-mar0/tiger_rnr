class TigersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_tiger, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      sql_query = " \
      tigers.name ILIKE :query \
      OR tigers.location ILIKE :query \
      OR users.username ILIKE :query \
      "
      @tigers = Tiger.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @tigers = Tiger.all
    end
  end

  def show
    # @tiger in find_tiger
    @booking = Booking.new
    @review = Review.new
  end

  def new
    @tiger = Tiger.new
  end

  def create
    @tiger = Tiger.new(tiger_params)
    @tiger.user = current_user

    if @tiger.save
      redirect_to tiger_path(@tiger), notice: 'Tiger Was Successfuly Created'
    else
      render :new
    end
  end

  def edit
    # @tiger in find_tiger
  end

  def update
    # @tiger in find_tiger
    if @tiger.update(tiger_params)
      redirect_to tiger_path(@tiger), notice: 'Tiger Was Successfuly Updated'
    else
      render :edit
    end
  end

  def destroy
    # @tiger in find_tiger
    @tiger.destroy
    redirect_to tigers_path, notice: 'Tiger Was Successfuly Deleted'
  end

  private

  def find_tiger
    @tiger = Tiger.find(params[:id])
  end

  def tiger_params
    params.require(:tiger).permit(:name, :age, :species, :price, :location, :photo)
  end
end

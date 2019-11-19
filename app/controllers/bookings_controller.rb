class BookingsController < ApplicationController
  before_action :find_booking, only: %i[destroy]

  def index
    @bookings = Booking.all
  end

  def create
    # @booking from find_booking
    # find the tiger
    @tiger = Tiger.find(params[:tiger_id])
    @booking = Booking.new(booking_params)
    # set the booking.tiger to the tiger object
    @booking.tiger = @tiger
    # user = current_user whoever makes the booking
    @booking.user = current_user

    if @tiger.save
      redirect_to bookings_path, notice: 'Booking was successful'
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_finish, :user, :tiger)
  end
end

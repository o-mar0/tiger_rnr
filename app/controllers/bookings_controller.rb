class BookingsController < ApplicationController
  before_action :find_booking, only: %i[destroy accept reject]

  def index
    @outgoing_bookings = current_user.bookings
    @incoming_bookings = current_user.incoming_bookings
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

    if @booking.save
      redirect_to bookings_path, notice: 'Booking was successful'
    else
      render 'tigers/show'
    end
  end

  def update
    if current_user.owner?
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully deleted'
  end

  def accept
    @booking.update(status: "accepted")
    redirect_to bookings_path
  end

  def reject
    @booking.update(status: "rejected")
    redirect_to bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end, :user, :tiger)
  end
end

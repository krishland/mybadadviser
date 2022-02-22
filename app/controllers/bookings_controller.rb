class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit]
  def index
    @bookings = Booking.all
  end

#   def show
#   end

#   def new
#     @booking = Booking.new
#   end

#   def create
#     @booking = Booking.new(booking_params)

#     if @booking.save
#       redirect_to @politic, notice: "Your booking is confirmed"
#     else
#       render :new
#     end
#   end

  # def edit
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(:booking) #### methode pas finie
  # end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to booking_path(@booking.list)
  # end

#   private

#   def set_booking
#     @booking = Booking.find(params[:id])
#   end

#   def booking_params
#     params.require(:booking).permit(:status, :bribe, :politic_id, :user_id)
#   end
end

class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_politic, only: [:new, :create]
  def index
    @bookings = Booking.all
  end

  def show
    @politic = @booking.politic
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.politic = @politic
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: "Your booking is confirmed"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Your crooked booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to politic_path(@booking.politic)
  end

  private

  def set_politic
    @politic = Politic.find(params[:politic_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :bribe)
  end
end

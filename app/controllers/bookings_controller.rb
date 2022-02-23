class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    authorize @booking
    @politic = @booking.politic
  end

  def new
    authorize @booking
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    if @booking.save
      redirect_to @booking, notice: "Your booking is confirmed"
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Your crooked booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to politic_path(@booking.politic)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :bribe, :booking_id, :user_id)
  end
end

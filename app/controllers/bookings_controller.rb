class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_politic, only: [:new, :create]
  def index
    bookings = policy_scope(Booking)
    @bookings_mine = bookings.where(user: current_user)

    @bookings_my_politics = bookings.find_all do |booking|
      current_user.politics.any? do |politic|
        politic == booking.politic
      end
    end

    # @bookings_my_politics.group_by{ |booking| booking.status }["accepted"] #=> pour grouper les booking par status, puis recuperer seulement les "accepted"
  end

  def show
    authorize @booking
    @politic = @booking.politic
  end

  def new
    @booking = Booking.new
    authorize @booking
  end


  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.politic = @politic
    @booking.status = "pending"
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: "Your booking is confirmed"
    else
      render :new
    end
  end

  def edit
    authorize @booking
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

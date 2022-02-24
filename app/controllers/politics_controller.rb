class PoliticsController < ApplicationController
  before_action :set_politic, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]



  def index
    if params[:query].present?
      @politics = policy_scope(Politic).where("name ILIKE ?", "%#{params[:query]}%")
    else
      @politics = policy_scope(Politic)
      @markers = @politics.geocoded.map do |politic|
        {
          lat: politic.latitude,
          lng: politic.longitude,
          info_window: render_to_string(partial: "info_window", locals: { politic: politic }),
          image_url: helpers.asset_url("corruption.png")
        }
      end
    end
  end

  def show
    authorize @politic
  end

  def new
    @politic = Politic.new
    authorize @politic
  end

  def create
    @politic = Politic.new(politic_params)
    @politic.user = current_user
    authorize @politic
    # @politic.user = current_user

    if @politic.save
      redirect_to politic_path(@politic), notice: 'politic was successfully created.'
    else
      p @politic.errors.messages
      render :new
    end
  end

  def edit
    authorize @politic
  end

  def update
    authorize @politic
    if @politic.update(politic_params)
        redirect_to politic_path(@politic), notice: 'Your crooked politic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @politic
    @politic.destroy

    redirect_to politics_path, notice: 'Your crooked politic was successfully destroyed.'
  end

  private

  def set_politic
    @politic = Politic.find(params[:id])
  end

  def politic_params
    params.require(:politic).permit(:name, :address, :description, :country, :picture, :first_stupid, :second_stupid, :availability, :user_id, :rating)
  end

end

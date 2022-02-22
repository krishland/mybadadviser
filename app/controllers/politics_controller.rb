class PoliticsController < ApplicationController
  before_action :set_politic, only: [:show, :edit, :update, :destroy]

  # GET /politics
  def index
    @politics = Politic.all
  end

  # GET /politics/1
  def show
  end

  # GET /politics/new
  def new
    @politic = Politic.new
  end

  # GET /politics/1/edit
  def edit
  end

  # POST /politics
  def create
    @politic = Politic.new(politic_params)

    if @politic.save
      redirect_to @politic, notice: 'politic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /politics/1
  def update
    if @politic.update(politic_params)
      redirect_to @politic, notice: 'politic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /politics/1
  def destroy
    @politic.destroy
    redirect_to politics_url, notice: 'politic was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politic
      @politic = Politic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def politic_params
      params.require(:politic).permit(:name, :country, :description, :picture, :first_stupid, :second_stupid, :third_stupid, :fourth_stupid, :fifth_stupid, :availability, :rating, :user_id)
    end
end

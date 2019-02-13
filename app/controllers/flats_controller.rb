class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_attributes)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  def flat_attributes
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end

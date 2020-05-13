class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end
  
  def new 
    @flat = Flat.new
  end

  private

  def flat_params
    params.require(:flat).permit(:name,:address,:description,:price_per_night,:number_of_guests,:image)
  end

end

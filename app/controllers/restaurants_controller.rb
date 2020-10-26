class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index 
    @restaurants = Restaurant.all
  end

  def new 
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  def show 
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :opening_hours, :rating, :contact_number, :cuisine, :cost_for_2)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

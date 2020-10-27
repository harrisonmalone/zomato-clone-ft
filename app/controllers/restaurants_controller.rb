class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index 
    @restaurants = Restaurant.all
  end

  def new 
    @restaurant = Restaurant.new
    @restaurant.build_address
  end

  def create
    current_user.restaurants.create(restaurant_params)
    redirect_to restaurants_path
  end

  def show 
  end

  def destroy 
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :opening_hours, :rating, :contact_number, :cuisine, :cost_for_2, address_attributes: [:street, :suburb, :postcode, :state, :country])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

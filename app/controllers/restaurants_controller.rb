class RestaurantsController < ApplicationController
  before_action :restaurants_set, only: :show 

  def index
   @restraunts = Restaurunt.all
  end

  def show
  end

  private

  def restaurants_set
    @restaurant = Restaurant.find(params[:id])  
  end

end
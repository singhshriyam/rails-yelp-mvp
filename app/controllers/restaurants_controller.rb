class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def show
    @review = Review.new
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  def destroy
    @restaurant.destroy!
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.', status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end

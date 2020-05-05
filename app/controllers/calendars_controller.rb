class CalendarsController < ApplicationController
    # before_action :find_coffee_shop_by_id, only: [:show, :update, :destroy]

  def index
    @calendars = Calendar.all
    render json: @calendars, include: :calendars
  end

  def show
    @calendar = Calendar.find(params[:id])
    render json: @calendar, include: :calendars
  end

  def create
    @calendar = Calendar.create(
      references: params[:references],
    )
    # render json: @coffee_shop
    render json: @calendar
  end

  def update
    @calendar.update(
      references: params[:references]
    )
    render json: @calendar, include: :calendars
  end

  def destroy
    @calendar.destroy
    render json: {message: "You have successfully destroyed your calendar"}
  end

#   private

#   def find_coffee_shop_by_id
#     @coffee_shop = CoffeeShop.find(params[:id])
#   end
end

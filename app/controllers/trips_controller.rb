class TripsController < ApplicationController
  def create
    @tinyhouse = Tinyhouse.find(params[:tinyhouse_id])
    @trip = Trip.new
    @trip.tinyhouse = @tinyhouse
    @trip.user = current_user
    if @trip.save
      redirect_to root_path
    else
      render 'tinyhouses/show'
    end
  end
end

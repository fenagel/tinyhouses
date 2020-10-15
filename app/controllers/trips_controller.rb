class TripsController < ApplicationController
  def show
    @user = current_user
    @trips = @user.trips
  end

  def create
    @tinyhouse = Tinyhouse.find(params[:tinyhouse_id])
    @trip = Trip.new(trip_params)
    @trip.tinyhouse = @tinyhouse
    @trip.user = current_user
    if @trip.save
      redirect_to root_path
    else
      render 'tinyhouses/show'
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:check_in, :check_out)
  end
end

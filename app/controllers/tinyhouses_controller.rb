class TinyhousesController < ApplicationController
  def show
    @tinyhouse = Tinyhouse.find(params[:id])
  end

end

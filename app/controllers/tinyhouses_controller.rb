class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show]

  def show
  end

  def index
    @tinyhouses = Tinyhouse.all
  end

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.find(params[:id])
  end

end

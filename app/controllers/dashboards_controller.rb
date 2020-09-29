class DashboardsController < ApplicationController
  def show
    @user = current_user
    @tinyhouses = @user.tinyhouses
  end
  
end

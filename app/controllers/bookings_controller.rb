class BookingsController < ApplicationController
    def show
    @user = current_user
    @bookings = @user.bookings
    # @past_bookings = bookings where end_date < Date.now
    # @upcoming_bookings = bookings where starting_date > Date.now
  end
end

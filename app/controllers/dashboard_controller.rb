class DashboardController < ApplicationController

  def custom_dashboard
    @stars = current_user.stars
    @reservations = current_user.reservations
  end
end

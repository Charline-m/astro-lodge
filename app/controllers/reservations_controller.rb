class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[custom_accept custom_reject]

  def new
    @reservation = Reservation.new
    @star = Star.find(params[:star_id])
  end

  def create
    @star = Star.find(params[:star_id])
    @reservation = Reservation.new(reservations_params)
    @reservation.star = @star
    @reservation.user = current_user
    @reservation.start_date = params[:reservation][:start_date]
    @reservation.end_date = params[:reservation][:end_date]
    # Vérifiez les conflits de réservation
    if @star.reservations.where(
      "(start_date <= ? AND end_date >= ?) OR
       (start_date <= ? AND end_date >= ?) OR
       (start_date >= ? AND end_date <= ?)",
      @reservation.start_date, @reservation.start_date,
      @reservation.end_date, @reservation.end_date,
      @reservation.start_date, @reservation.end_date
      ).exists?
      Rails.logger.debug "Conflit détecté : redirection en cours."
      # flash[:alert] = "L'astre est déjà réservé pour ces dates."
      redirect_to stars_path, notice: "L'astre est déjà réservé pour ces dates." and return
    end
    # Sauvegarder la réservation
    if @reservation.save
      # flash[:notice] = "Réservation confirmée !"
      redirect_to dashboard_path, notice: "Réservation confirmée !" and return
    else
      # flash[:alert] = "Erreur dans la réservation."
      render "stars/show", notice: "Erreur dans la réservation."
    end
  end


  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy!
    redirect_to star_path(@reservation.star), status: :see_other
  end

  def custom_accept
    @reservation.update(status: 'accepted')
    redirect_to dashboard_path, notice: "La réservation a été acceptée."
  end

  def custom_reject
    @reservation.update(status: 'rejected')
    redirect_to dashboard_path, notice: "La réservation a été rejetée."
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date, :star_id, :user_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end

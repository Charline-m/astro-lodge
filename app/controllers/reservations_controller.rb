class ReservationsController < ApplicationController



  def new
    @reservation = Reservation.new
    @star = Star.find(params[:star_id])
  end

  def create
    @star = Star.find(params[:star_id])
    @reservation = @star.reservations.new(reservations_params)
    @reservation.user = current_user

      if @star.reservations.where("start_date < ? AND end_date > ?", @reservation.end_date, @reservation.start_date).exists?
        flash[:alert] = "L'astre est déjà réservé pour ces dates."
        redirect_to star_path(@star)
      elsif @reservation.save
        flash[:notice] = "Réservation confirmée !"
        redirect_to star_path(@star)
      else
        flash[:alert] = "Erreur dans la réservation."
        render "stars/show"
      end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy!
    redirect_to star_path(@reservation.star), status: :see_other
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date, :star_id, :user_id)
  end
end

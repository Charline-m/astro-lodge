class ReservationsController < ApplicationController



  def new
    @reservation = Reservation.new
    @star = Star.find(params[:star_id])
  end

  def create

    @reservation = Reservation.new(reservations_params)
      if @reservation.save
      redirect_to star_path(@reservation.star)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy!
    redirect_to star_path(@reservation.star), status: :see_other
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date :star_id, :user_id)
  end
end

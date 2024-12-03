class StarsController < ApplicationController
  def index
    @stars = Star.all
  end

  def show
    @star = Star.find(params[:id])
  end

  def new
    @star = Star.new
  end

  def create
    @star = Star.new(star_params)
    if @star.save
      redirect_to stars_path, notice: "Astre créé avec succès"
    else
      render :new, alert: "Erreur lors de la création"
    end
  end

  private

  def star_params
    params.require(:star).permit(:name, :description, :type, :price)
  end
end

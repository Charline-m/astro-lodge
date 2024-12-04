class StarsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  has_one_attached :image

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
    @star.user = current_user
    if @star.save
      redirect_to stars_path, notice: "Astre créé avec succès"
    else
      render :new, alert: "Erreur lors de la création"
    end
  end

  private

  def star_params
    params.require(:star).permit(:name, :description, :category, :price, :photo)
  end


end

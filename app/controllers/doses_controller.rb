class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      @dose.cocktail = Cocktail.find(params[:cocktail_id])
      redirect_to doses_create_path
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end

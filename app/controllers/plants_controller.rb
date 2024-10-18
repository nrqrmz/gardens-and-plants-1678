class PlantsController < ApplicationController
  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    if @plant.save
      redirect_to @garden
    else
      render "gardens/show"
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @garden = @plant.garden
    @plant.destroy

    redirect_to @garden
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :img_url)
  end
end

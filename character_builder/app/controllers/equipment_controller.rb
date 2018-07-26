class EquipmentController < ApplicationController
  def index
  end

  def new
  end

  def create
    @equipment = Equipment.new(equipment_params)

    @equipment.save
    redirect_to @equipment
  end

  def show
      @equipment = Equipment.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
    def equipment_params
      params.require(:equipment).permit(:name, :description, :durability, :character_id)
    end

end

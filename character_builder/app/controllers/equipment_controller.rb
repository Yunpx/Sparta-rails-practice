class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment = Equipment.new
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
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    respond_to do |format|
     if @equipment.update_attributes(params[:equipment])
      format.html { redirect_to @equipment, notice: 'Equipment was successfully updated.' }
      format.json { head :no_content }
     else
      format.html { render action: "edit" }
      format.json { render json: @equipment.errors, status: :unprocessable_entity }
     end
  end

  def delete
  end

  private
    def equipment_params
      params.require(:equipment).permit(:name, :description, :durability, :character_id)
    end

end

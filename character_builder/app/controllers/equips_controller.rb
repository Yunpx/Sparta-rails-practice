class EquipsController < ApplicationController
  before_action :set_equip, only: [:show, :edit, :update, :destroy]
  def index
    @equips = Equip.all
    @character = Character.find(params[:id])
  end

  def new
    @equip = Equip.new
  end

  def create
    @equip = Equip.new(equip_params)

    if @equip.save
    redirect_to @equip
    else
    render 'new'
    end

  def show
  end

  def edit
    @equip = Equip.find(params[:id])
  end

  def update
    @equip = Equip.find(params[:id])

    if @equip.update(equip_params)
      redirect_to @equip
    else
      render 'edit'
    end
  end

  def destroy
    @equip = Equip.find(params[:id])
    @equip.destroy

    redirect_to equip_path
  end

  private
  def set_equip
    @equip = Equip.find(params[:id])
  end

    def equip_params
      params.require(:equip).permit(:name, :description, :durability, :type ,:character_id)
    end

end

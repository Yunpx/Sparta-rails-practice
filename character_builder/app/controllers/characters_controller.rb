class CharactersController < ApplicationController
  def new

  end

  def create
    @character = Character.new(character_params)

    @character.save
    redirect_to @character

  end

  private
  def character_params
    params.require(:character).permit(:name, :class_type)
  end
end

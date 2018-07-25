class CharactersController < ApplicationController
  def new

  end

  def create
    render plain: params[:charater].inspect
  end
end

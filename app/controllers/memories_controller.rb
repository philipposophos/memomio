class MemoriesController < ApplicationController
  def index
    @memorie = Memorie.all
  end

  def edit
    @memorie = Memorie.find(params[:id])
  end

  def update
    @memorie = Memorie.find(params[:id])
    @memorie.update(memorie_params)
    redirect_to memorie_path(@memorie)
  end
end

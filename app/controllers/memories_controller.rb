class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end

  def new
    @memory = Memory.new
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user = current_user

    if @memory.save
      redirect_to memory_path(@memory)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy

    redirect_to memories_path, status: :see_other
  end

  private

  def memory_params
    params.require(:memory).permit(:date, :title, :description)
  end
end

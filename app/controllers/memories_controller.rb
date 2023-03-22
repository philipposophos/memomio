class MemoriesController < ApplicationController
  def index
    if params[:query].present?
      # @memories = Memory.where(title: params[:query])
      @memories = Memory.search_by_title_and_description(params[:query])
    else
      @memories = Memory.all
    end
  end

  def new
    @memory = Memory.new
  end

  def show
    @memory = Memory.find(params[:id])
    @note = Note.new
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

  def edit
    @memory = Memory.find(params[:id])
  end

  def update
    @memory = Memory.find(params[:id])
    @memory.update(memory_params)
    redirect_to memory_path(@memory)
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

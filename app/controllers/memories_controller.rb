class MemoriesController < ApplicationController
  def index
    if params[:query].present?
      @memories = policy_scope(Memory).where(title: params[:query])
    else
      @memories = policy_scope(Memory)
    end
  end

  def new
    @memory = Memory.new
    authorize @memory
  end

  def show
    @memory = Memory.find(params[:id])
    @note = Note.new
    authorize @memory
    authorize @note
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user = current_user
    authorize @memory

    if @memory.save
      redirect_to memory_path(@memory)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @memory = Memory.find(params[:id])
    authorize @memory
  end

  def update
    @memory = Memory.find(params[:id])
    @memory.update(memory_params)
    authorize @memory
    redirect_to memory_path(@memory)
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    authorize @memory
    redirect_to memories_path, status: :see_other
  end

  private

  def memory_params
    params.require(:memory).permit(:date, :title, :description, :photo)
  end
end

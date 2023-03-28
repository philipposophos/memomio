class MemoriesController < ApplicationController
  def index
    if params[:query].present?
      @memories = policy_scope(Memory).search_by_title_and_description(params[:query])
    else
      @memories = policy_scope(Memory)
    end

    @memories = @memories.order(date: :desc, key_memory: :desc)
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
    authorize @memory
    if @memory.update(memory_params)
      respond_to do |format|
        format.html { redirect_to memory_path(@memory) }
        format.text { render partial: "memories/memory_infos", locals: {memory: @memory}, formats: [:html] }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    authorize @memory
    redirect_to memories_path, status: :see_other
  end

  private

  def memory_params
    params.require(:memory).permit(:date, :title, :description, :photo, :key_memory)
  end
end

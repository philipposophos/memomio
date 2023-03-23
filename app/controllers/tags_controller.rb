class TagsController < ApplicationController
  def new
    @memory = Memory.find(params[:memory_id])
    @tag = Tag.new
    @emotional_tags = EmotionalTag.all
    authorize @memory
    authorize @tag
    authorize @emotional_tags
  end

  def create
    @memory = Memory.find(params[:memory_id])
    @tag = Tag.new(tag_params)
    @tag.memory = @memory
    authorize @memory
    authorize @tag

    if @tag.save
      redirect_to memory_path(@memory)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @memory = @tag.memory
    authorize @tag
    authorize @memory
    @tag.destroy
    redirect_to memory_path(@memory)

  end

  private

  def tag_params
    params.require(:tag).permit(:emotional_tag_id)
  end
end

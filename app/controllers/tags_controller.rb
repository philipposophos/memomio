class TagsController < ApplicationController
  def new
    @memory = Memory.find(params[:memory_id])
    @tag = Tag.new
    @emotional_tags = EmotionalTag.all
  end

  def create
    @memory = Memory.find(params[:memory_id])
    @tag = Tag.new(tag_params)
    @tag.memory = @memory

    if @tag.save
      redirect_to memory_path(@memory)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @memory = @tag.memory
    @tag.destroy
    redirect_to memory_path(@memory)
  end

  private

  def tag_params
    params.require(:tag).permit(:emotional_tag_id)
  end
end

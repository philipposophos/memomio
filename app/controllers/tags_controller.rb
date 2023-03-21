class TagsController < ApplicationController
  def new
    @memory = Memory.find(params[:memory_id])
    @tag = Tag.new
    @emotional_tags = EmotionalTag.all
  end

  def create
  end

  def destroy
  end
end

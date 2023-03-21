class NotesController < ApplicationController
  def new
    @note = Note.new
    authorize @note 
  end

  def create
    @note = Note.new(note_params)
    @memory = Memory.find(params[:memory_id])
    @note.memory = @memory 
    authorize @note
    if @note.save
      redirect_to memory_path(@memory)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @note = Note.find(params[:id])
    authorize @note
  end

  def update
    @note = Note.find(params[:id])
    authorize @note
    if Note.update(note_params)
      redirect_to memory_path(@note.memory)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note = Note.find(params[:id])
    authorize @note
    @note.destroy
    redirect_to memory_path(@note.memory)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end

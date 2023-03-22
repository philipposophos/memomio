class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @memory = Memory.find(params[:memory_id])
    @note.memory = @memory 
    if @note.save
      redirect_to memory_path(@memory)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      respond_to do |format|
        format.html { redirect_to memory_path(@note.memory) }
        format.text { render partial: "memories/note_infos", locals: {note: @note}, formats: [:html] }
      end
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @memory = @note.memory
    @note.destroy
    redirect_to memory_path(@memory)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end

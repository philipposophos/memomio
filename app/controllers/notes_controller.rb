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
    authorize @memory 
    if @note.save
      redirect_to memory_path(@memory)
    else
      redirect_to memory_path(@memory)
    end
  end

  def edit
    @note = Note.find(params[:id])
    authorize @note
  end

  def update
    @note = Note.find(params[:id])
    authorize @note
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
    authorize @note
    authorize @memory
    @note.destroy
    redirect_to memory_path(@memory)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end

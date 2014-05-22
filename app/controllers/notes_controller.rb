class NotesController < ApplicationController

  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to notes_path, notice: "#{@note} was created!"
    else
      flash[:error] = "ERROR with note"
      render :new
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: "#{@note} updated!"
    else
      flash[:error] = "ERROR with note"
      redirect_to @note
    end
  end

  def destroy
    if @note.destroy
      redirect_to notes_path, notice: "#{@note} destroyed!"
    else
      flash[:error] = "ERROR with note"
      redirect_to @note
    end
  end

  private

  def note_params
    params.require(:note).permit!
  end

  def set_note
    @note = Note.find(params[:id])
  end

end
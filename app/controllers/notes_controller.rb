class NotesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to @note, notice: "#{@note.title} was created!"
    else
      flash[:error] = "ERROR with note"
      render :new
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to @note, notice: "#{@note.title} updated!"
    else
      flash[:error] = "ERROR with note"
      render :edit
    end
  end

  def destroy
    if @note.destroy
      redirect_to notes_path, notice: "#{@note.title} destroyed!"
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
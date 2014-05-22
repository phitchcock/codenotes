class GemCommentsController < ApplicationController
  
  before_action :set_gem_comment, only: [:show, :edit, :update, :destroy]

  def index
    @gem_comments = GemComment.paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @gem_comment = GemComment.new
  end

  def create
    @gem_comment = GemComment.new(gem_comment_params)
    if @gem_comment.save
      redirect_to @gem_comment, notice: "#{@gem_comment.name} created"
    else
      flash[:error] = "Gem info did not save"
      render :new
    end
  end

  private

  def gem_comment_params
    params.require(:gem_comment).permit!
  end

  def set_gem_comment
    @gem_comment = GemComment.find(params[:id])
  end
end
class GemCommentsController < ApplicationController
  
  before_action :set_gem_comment, only: [:show, :edit, :update, :destroy]

  def index
    @gem_comments = GemComment.paginate(page: params[:page], per_page: 10)
    render layout: "empty"
  end

  def show
    render layout: "empty"
  end

  def new
    @gem_comment = GemComment.new
    render layout: "empty"
  end

  def create
    @gem_comment = GemComment.new(gem_comment_params)
    if @gem_comment.save
      redirect_to gem_comments_path, notice: "#{@gem_comment.name} created"
    else
      flash[:error] = "Gem info did not save"
      render :new, layout: "empty"
    end
  end

  def edit
    render layout: "empty"
  end

  def update
    if @gem_comment.update(gem_comment_params)
      redirect_to @gem_comment, notice: "#{@gem_comment.name} updated"
    else
      flash[:error] = "Whoops gem comment did not save"
      render :edit, layout: "empty"
    end
  end

  def destroy
    if @gem_comment.destroy
      redirect_to gem_comments_path, notice: "#{@gem_comment.name} destroyed"
    else
      flash[:error] = "Did not destroy"
      redirect_to gem_comment_path 
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
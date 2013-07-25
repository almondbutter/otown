class CommentsController < ApplicationController
  def show
    @link    = Link.find(params[id])
    @comment = Comment.new
  end

  def new
    @comment = Comment.new
  end

  before_filter :authenticate_user!

  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to :back
  end

end

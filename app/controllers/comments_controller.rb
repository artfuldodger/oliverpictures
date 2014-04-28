class CommentsController < ApplicationController
  before_filter :get_picture

  def create
    @comment = @picture.comments.new(comment_params)
    if @comment.save
      redirect_to @picture, notice: 'Comment added!'
    else
      render 'pictures/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment)
  end

  def get_picture
    @picture = Picture.find(params[:picture_id])
  end
end

class CommentsController < ApplicationController
  def index
    @comments = Comment.order(create_time: :asc)
  end

  def create
    @comment = Comment.new(
      name: params.require(:name),
      text: params.require(:text),
      create_time: DateTime.now
    )

    if @comment.save
      redirect_to comments_path
    else
      render "post_error"
    end
  end
end

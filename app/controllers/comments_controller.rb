class CommentsController < ApplicationController
  def create
    conversion = Conversion.find params[:conversion_id]
    @comment = conversion.comments.build(content: params[:comment][:content])
    @comment.save
  end

  private

  def comment_params

  end
end

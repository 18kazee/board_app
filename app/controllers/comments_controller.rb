class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @comment.board_id = params[:board_id]
    if @comment.save
      flash[:success] = t('defaults.message.created', item: Comment.model_name.human)
    else
      flash[:danger] = t('defaults.message.not_created', item: Comment.model_name.human)
    end
    redirect_to board_path(params[:board_id])
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :board_id)
  end
end

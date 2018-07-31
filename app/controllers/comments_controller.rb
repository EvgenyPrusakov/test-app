class CommentsController < ApplicationController

  def create
    if params[:article_id]
      @article = Article.find(params[:article_id])
      @comment = @article.comments.new(comment_params)
    end
    @comment.user = current_user
    if @comment.save!
      redirect_to article_path(@article)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :comment_id)
  end

end

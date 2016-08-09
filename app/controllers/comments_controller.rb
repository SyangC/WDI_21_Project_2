class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    recommendation = Recommendation.find_by(id: params[:id])
    comment = recommendation.comments.build(comment_params)
    comment.user = current_user

    if comment.save
      flash[:notice] = "Comment has been created."
      redirect_to recommendation
    else
      flash[:alert] = "Comment has not been created."
    end
  end

  private    
    def comment_params
      params.permit(:comment)
    end
end

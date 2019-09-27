class LikesController < ApplicationController
  before_action :counter_for_like, only: [:create]
  def create

  	@like = Like.new
  	@like.user = current_user
  	@like.mf = Mf.find(params[:mf_id])
  	@like.comment = Comment.find(params[:comment_id])
  	answer = Answer.find(params[:answer_id])
  	@like.answer = answer
  	@la = Like.find_by(answer_id: answer.id, user: current_user.id)
  	if @like.save
  		current_user.likes << @like
  		redirect_back fallback_location: "/", allow_other_host: false
  	end
  end

  private
  def counter_for_like
  	answer = Answer.find(params[:answer_id])
  	answer.likes.each do |like|
  		if like.user == current_user
  			flash[:alert]="Vous ne pouvez plus liker"
  			answer.likes.delete(answer.likes.last.id)
  			redirect_back fallback_location: "/", allow_other_host: false
  		end
  	end
  end
end

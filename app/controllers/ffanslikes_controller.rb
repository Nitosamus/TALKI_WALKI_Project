class FfanslikesController < ApplicationController
    before_action :counter_for_like, only: [:create]
  def create
  	@like = Like.new
  	@like.user = current_user
  	@like.ff = Ff.find(params[:ff_id])
  	#comment = Comment.find(params[:ffcom_id])
  	#@like.comment = comment
  	answer = Answer.find(params[:ffan_id])
  	@like.answer = answer
  	#@la = Like.find_by(answer_id: answer.id, user: current_user.id)
  	if @like.save
  		current_user.likes << @like
  		
  		redirect_back fallback_location: "/", allow_other_host: false
  	end
  end

  private
  def counter_for_like
  	answer = Answer.find(params[:ffan_id])
  	answer.likes.each do |like|
  		if like.user == current_user
  			flash[:alert]="Vous ne pouvez plus liker"
  			#answer.likes.delete()
  			Like.delete(answer.likes.last.id)
  			redirect_back fallback_location: "/", allow_other_host: false
   		end
  	end
  end
end

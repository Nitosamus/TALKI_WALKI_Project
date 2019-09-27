class AnswersController < ApplicationController
  def new
  	@answer = Answer.new
  end

  def create
  	@answer = Answer.new(body: params[:body])
  	mf = Mf.find(params[:mf_id])
  	@answer.mf = mf
  	@answer.user = current_user
  	comment = Comment.find(params[:comment_id])
  	@answer.commnent = comment
  	if @answer.save
  		comment.answers << @answer
  	flash[:notice]= "réponse ajoutée à #{mf.title}" 
  	redirect_to mf_path(mf.id)
  	end
  end

  def edit
  end

  def destroy
  end
end

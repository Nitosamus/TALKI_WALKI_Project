class AnswersController < ApplicationController
  def new
  	@answer = Answer.new
  end

  def create
  	@answer = Answer.new(body: params[:body])
  	mf = Mf.find(params[:mf_id])
  	@answer.mf = mf
  	@answer.user = User.all[rand(0..9)]
  	comment = Comment.find(params[:comment_id])
  	@answer.comment = comment
  	if @answer.save
  		comment.answers << @answer
  	flash[:notice]= "réponse ajoutée à #{mf.title}" 
  	redirect_to mf_path(mf.id)

  	else
  		puts @answer.errors.full_messages
  		redirect_back fallback_location: "/", allow_other_host:false
  	end

  end

  def edit
  	@answer = Answer.find(params[:id])
  end

  def update
  	@answer = Answer.find(params[:id])
  	mf = Mf.find(params[:mf_id])
  	@answer.body = params[:body]
  	if @answer.save
  		redirect_to mf_path(mf.id)
  	else
  	  	redirect_back fallback_location: "/", allow_other_host:false
	end
  end

  def destroy
  	@answer = Answer.find(params[:id])
  	@answer.destroy
    mf = Mf.find(params[:mf_id])
   # mf.answers.each do |answer|
    #  Answer.delete(answer.id)
   # end
  	redirect_back fallback_location: "/", allow_other_host:false
  end
end

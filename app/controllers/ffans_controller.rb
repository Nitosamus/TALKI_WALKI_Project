class FfansController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(body: params[:body])
    ff = Ff.find(params[:ff_id])
    @answer.ff = ff
    @answer.user = current_user
    comment = Comment.find(params[:ffcom_id])
    @answer.comment = comment
    if @answer.save
      comment.answers << @answer
    flash[:notice]= "réponse ajoutée à #{ff.title}" 
    redirect_to ff_path(ff.id)

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
    ff = Ff.find(params[:ff_id])
    @answer.body = params[:body]
    if @answer.save
      redirect_to ff_path(ff.id)
    else
        redirect_back fallback_location: "/", allow_other_host:false
  end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    ff = Ff.find(params[:ff_id])
   # mf.answers.each do |answer|
    #  Answer.delete(answer.id)
   # end
    redirect_back fallback_location: "/", allow_other_host:false
  end
end

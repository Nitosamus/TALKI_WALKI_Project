class JobcomsController < ApplicationController
  def create
  	@comment = Comment.new(body: params[:body])
  	job = Job.find(params[:job_id])
  	@comment.job = job
  	@comment.user = current_user
  	if @comment.save
  		job.comments << @comment
  	flash[:notice]= "commentaire ajouter à #{job.name}" 
  	redirect_back fallback_location: "/", allow_other_host: false

    end

  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    job = Job.find(params[:job_id])
    @comment.body = params[:body]
    if @comment.save
      redirect_to field_job_path(params[:field_id], job.id)
    else
        redirect_back fallback_location: "/", allow_other_host:false
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    # suppression des réponses du commentaire avec ces likes
    comment.answers.each do |answer|
      Answer.delete(answer.id)
        answer.likes.each do |like|
          Like.delete(like.id)
        end
    end
    comment.likes.each do |like|
      Like.delete(like.id)
    end
     comment.destroy
    #ff = Ff.find(params[:ff_id])
   # mf.answers.each do |answer|
    #  Answer.delete(answer.id)
   # end
    redirect_back fallback_location: "/", allow_other_host:false
  end
end

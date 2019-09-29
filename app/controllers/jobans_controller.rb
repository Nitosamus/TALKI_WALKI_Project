class JobansController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(body: params[:body])
    job = Job.find(params[:job_id])
    @answer.job = job
    @answer.user = User.all[rand(0..9)]
    comment = Comment.find(params[:jobcom_id])
    @answer.comment = comment
    if @answer.save
      comment.answers << @answer
    flash[:notice]= "réponse ajoutée à #{job.name}" 
    redirect_to field_job_path(params[:field_id], job.id)

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
    job = Job.find(params[:job_id])
    @answer.body = params[:body]
    if @answer.save
      redirect_to field_job_path(params[:field_id], job.id)
    else
      redirect_back fallback_location: "/", allow_other_host:false
  end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    job = Job.find(params[:job_id])
   # mf.answers.each do |answer|
    #  Answer.delete(answer.id)
   # end
    redirect_back fallback_location: "/", allow_other_host:false
  end
end

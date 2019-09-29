class FfcomsController < ApplicationController
  def new
  end

  def create
      @comment = Comment.new(body: params[:body])
    ff = Ff.find(params[:ff_id])
    @comment.ff = ff
    @comment.user = current_user
    if @comment.save
      ff.comments << @comment
    flash[:notice]= "commentaire ajouter à #{ff.title}" 
    redirect_back fallback_location: "/", allow_other_host: false
    end
  end

  def edit
      @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    ff = Ff.find(params[:ff_id])
    @comment.body = params[:body]
    if @comment.save
      redirect_to ff_path(ff.id)
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

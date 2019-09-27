class CommentsController < ApplicationController
  def new
  	
  end

  def create
  	@comment = Comment.new(body: params[:body])
  	mf = Mf.find(params[:mf_id])
  	@comment.mf = mf
  	@comment.user = current_user
  	if @comment.save
  		mf.comments << @comment
  	flash[:notice]= "commentaire ajouter à #{mf.title}" 
  	redirect_back fallback_location: "/", allow_other_host: false
  	end

  end

  def edit
  end

  def destroy
  end
end

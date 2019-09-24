class LikeAcademiquesController < ApplicationController
  def new
  	@like= Like.new( user_id: current_user.id, formation_academique_id:  params[:formation_academique_id])
  end

  def create
  	
  	 if interresse == 0 
  	 	@like= Like.create( user_id: current_user.id, formation_academique_id:  params[:formation_academique_id])
  	 	FormationAcademique.find(params[:formation_academique_id]).likes<<@like
  	 	redirect_back fallback_location: '/', allow_other_host: false
 	else interresse> 1  || interresse==1
 		@likes=Like.find_by(user_id: current_user)
 		FormationAcademique.find(params[:formation_academique_id]).likes.delete(@likes)
 		redirect_back fallback_location: '/', allow_other_host: false
 	end
	
  end

  private
  def interresse
  	FormationAcademique.find(params[:formation_academique_id]).likes.count 
  end
end

class LikeProfessionelsController < ApplicationController
  def new
  	@like= Like.new( user_id: current_user.id, professional_formation_id:  params[:professional_formation_id])
  end

  def create
  	
  	 if interresse == 0 
  	 	@like= Like.create( user_id: current_user.id, professional_formation_id:  params[:professional_formation_id])
  	 	ProfessionalFormation.find(params[:professional_formation_id]).likes<<@like
  	 	redirect_back fallback_location: '/', allow_other_host: false
 	else interresse> 1  || interresse==1
 		@likes=Like.find_by(user_id: current_user)
 		ProfessionalFormation.find(params[:professional_formation_id]).likes.delete(@likes)
 		redirect_back fallback_location: '/', allow_other_host: false
 	end
	
  end

  private
  def interresse
  	ProfessionalFormation.find(params[:professional_formation_id]).likes.count 
  end

end

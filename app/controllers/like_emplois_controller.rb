class LikeEmploisController < ApplicationController
	def new
  	@like= Like.new( user_id: current_user.id, offre_emploi_id:  params[:offre_emploi_id])
  end

  def create
  	
  	 if interresse == 0 
  	 	@like= Like.create( user_id: current_user.id, offre_emploi_id:  params[:offre_emploi_id])
  	 	OffreEmploi.find(params[:offre_emploi_id]).likes<<@like
  	 	redirect_back fallback_location: '/', allow_other_host: false
 	else interresse> 1  || interresse==1
 		@likes=Like.find_by(user_id: current_user)
 		OffreEmploi.find(params[:offre_emploi_id]).likes.delete(@likes)
 		redirect_back fallback_location: '/', allow_other_host: false
 	end
	
  end

  private
  def interresse
  	OffreEmploi.find(params[:offre_emploi_id]).likes.count 
  end
end

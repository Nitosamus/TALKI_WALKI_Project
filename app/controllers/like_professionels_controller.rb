class LikeProfessionelsController < ApplicationController
  def new
  	@like= Like.new( user_id: current_user.id, commentaire_id: params[:commentaire_professionel_id], reponse_id:  params[:reponse_professionnel_id], professional_formation_id:  params[:professional_formation_id])
  end

  def create
  	@like= Like.create( user_id: current_user.id, commentaire_id: params[:commentaire_professionel_id], reponse_id:  params[:reponse_professionnel_id], professional_formation_id:  params[:professional_formation_id])
  	 
  	ProfessionalFormation.find(params[:professional_formation_id]).likes<< @like
  	Commentaire.find(params[:commentaire_professionel_id]).likes<<@like
  	Reponse.find(params[:reponse_professionnel_id]).likes << @like
  	redirect_back fallback_location: '/', allow_other_host: false
  end

  def destroy
  end
end

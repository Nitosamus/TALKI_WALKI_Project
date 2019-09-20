class LikeEmploisController < ApplicationController
  def new
  	@like= Like.new( user_id: current_user.id, commentaire_id: params[:commentaire_emploi_id], reponse_id:  params[:reponse_emploi_id], offre_emploi_id:  params[:offre_emploi_id])
  end

  def create
  	@like= Like.create( user_id: current_user.id, commentaire_id: params[:commentaire_emploi_id], reponse_id:  params[:reponse_emploi_id], offre_emploi_id:  params[:offre_emploi_id])
  	OffreEmploi.find(params[:offre_emploi_id]).likes<< @like
  	Commentaire.find(params[:commentaire_emploi_id]).likes<<@like
  	Reponse.find(params[:reponse_emploi_id]).likes << @like
  	redirect_back fallback_location: '/', allow_other_host: false
  end

  def destroy
  end
end

class LikeAcademiquesController < ApplicationController
  def new
  	@like= Like.new( user_id: current_user.id, commentaire_id: params[:commentaire_academique_id], reponse_id:  params[:reponse_academique_id], formation_academique_id:  params[:formation_academique_id])
  end

  def create
  	@like= Like.create( user_id: current_user.id, commentaire_id: params[:commentaire_academique_id], reponse_id:  params[:reponse_academique_id], )
  	@likes= Like.create( user_id: current_user.id, formation_academique_id:  params[:formation_academique_id])
  	FormationAcademique.find(params[:formation_academique_id]).likes<< @likes
  	Commentaire.find(params[:commentaire_academique_id]).likes<<@like
  	Reponse.find(params[:reponse_academique_id]).likes << @like
  	redirect_back fallback_location: '/', allow_other_host: false
  end

  def destroy
  end
end

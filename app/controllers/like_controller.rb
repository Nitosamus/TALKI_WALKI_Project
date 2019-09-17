class LikeController < ApplicationController
  def new
    @like= Like.new( user_id: current_user.id, commentaire_id: params[:commentaire_id], reponse_id:  params[:reponse_id], formation_academique_id:  params[:formation_academique_id], professional_formation_id:  params[:professional_formation_id], offre_emploi_id:  params[:offre_emploi_id])
  end

  def create
    @like= Like.new( user_id: current_user.id , commentaire_id: params[:commentaire_id], reponse_id:  params[:reponse_id], formation_academique_id:  params[:formation_academique_id], professional_formation_id:  params[:professional_formation_id], offre_emploi_id:  params[:offre_emploi_id])
     @like.save
    redirect_back fallback_location: '/', allow_other_host: false
    puts "#" * 120
    puts "#{@like.errors.full_messages}"
    puts "#" * 120
  end


  def destroy
  end

 
end

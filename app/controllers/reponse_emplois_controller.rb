class ReponseEmploisController < ApplicationController
  def new
  	@reponse= Reponse.new
  end

  def create
  	if @reponse= Reponse.create(user_id: current_user.id, contenu: params[:contenu],  commentaire_id: params[:commentaire_emploi_id])
  	 redirect_to offre_emploi_path(params[:offre_emploi_id])
    end
  end

  def edit
  end

  def destroy
  end
end

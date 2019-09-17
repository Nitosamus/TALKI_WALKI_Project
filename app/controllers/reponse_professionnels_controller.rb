class ReponseProfessionnelsController < ApplicationController
  def new
  	@reponse= Reponse.new
  end

  def create
  	if @reponse= Reponse.create(user_id: current_user.id, contenu: params[:contenu],  commentaire_id: params[:commentaire_professionel_id])
      redirect_to professional_formation_path(params[:professional_formation_id])
    end
  end

  def edit
  end

  def destroy
  end
end

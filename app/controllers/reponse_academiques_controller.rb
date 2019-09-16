class ReponseAcademiquesController < ApplicationController
  def new
    @reponse= Reponse.new
  end

  def create
    if @reponse= Reponse.create(user_id: current_user.id, contenu: params[:contenu],  commentaire_id: params[:commentaire_id])
      redirect_to formation_academique_path(params[:formation_academique_id])
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

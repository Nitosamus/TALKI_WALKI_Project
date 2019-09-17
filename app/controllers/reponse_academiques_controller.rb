class ReponseAcademiquesController < ApplicationController
  def new
    @reponse= Reponse.new
  end

  def create
    if @reponse= Reponse.create(user_id: current_user.id, contenu: params[:contenu],  commentaire_id: params[:commentaire_academique_id])
      redirect_to formation_academique_path(params[:formation_academique_id])
    end
  end

  def edit
    @reponse= Reponse.find(params[:id])
  end

  def update
    @reponses= Reponse.find(params[:id])
    if @reponse= @reponses.update(user_id: current_user.id, contenu: params[:contenu],  commentaire_id: params[:commentaire_academique_id])
       redirect_to formation_academique_path(params[:formation_academique_id])
     end
  end

  def destroy
    @reponse= Reponse.find(params[:id])
    if @reponse= Reponse.destroy(params[:id])
      redirect_to formation_academique_path(params[:formation_academique_id])
    end
  end
end

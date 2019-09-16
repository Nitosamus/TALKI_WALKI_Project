class CommentaireAcademiquesController < ApplicationController
  def new
    @commentaire = Commentaire.new
  end
  def create
     if @commentaire = Commentaire.create(user_id: current_user.id, contenu: params[:contenu], formation_academique_id: params[:formation_academique_id])
      redirect_to formation_academique_path(params[:formation_academique_id])
    end
  end
  def edit
    @commentaire = Commentaire.find(params[:id])
    
  end

  def update
     @commentaire = Commentaire.find(params[:id])
    if @commentaire.update(user_id: current_user.id, contenu: params[:contenu], formation_academique_id: params[:formation_academique_id])
    redirect_to formation_academique_path(params[:formation_academique_id])
    end
  end

  def destroy
    @commentaire = Commentaire.find(params[:id])
    @commentaire.destroy
    redirect_to formation_academique_path(params[:formation_academique_id])
  end
end

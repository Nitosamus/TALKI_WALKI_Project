class CommentaireProfessionelsController < ApplicationController
  def new
    @commentaire = Commentaire.new
  end

  def create
    if  @commentaire = Commentaire.create(user_id: current_user.id, contenu: params[:contenu], professional_formation_id: params[:professional_formation_id])
      redirect_to professional_formation_path(params[:professional_formation_id])
    end
  end

  def edit
    @commentaire = Commentaire.find(params[:id])
  end

  def update
    @commentaire = Commentaire.find(params[:id])
    if @commentaire.update(user_id: current_user.id, contenu: params[:contenu], professional_formation_id: params[:professional_formation_id])
    redirect_to professional_formation_path(params[:professional_formation_id])
    end
  end

  def destroy
    @commentaire = Commentaire.find(params[:id])
    @commentaire.destroy
    redirect_to professional_formation_path(params[:professional_formation_id])
  end
end

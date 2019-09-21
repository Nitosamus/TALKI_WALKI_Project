class CommentaireEmploisController < ApplicationController
  def new
    @commentaire = Commentaire.new
  end

  def create
    if @commentaire = Commentaire.create(user_id: current_user.id, contenu: params[:contenu], offre_emploi_id: params[:offre_emploi_id])
      redirect_to offre_emploi_path(params[:offre_emploi_id])
    end
  end

  def edit
     @commentaire = Commentaire.find(params[:id])
  end

  def update
    @commentaire = Commentaire.find(params[:id])
    if @commentaire.update(user_id: current_user.id, contenu: params[:contenu], offre_emploi_id: params[:offre_emploi_id])
    redirect_to offre_emploi_path(params[:offre_emploi_id])
    end
  end

  def destroy
    @commentaire = Commentaire.find(params[:id])
    @commentaire.destroy
    redirect_to offre_emploi_path(params[:offre_emploi_id])
  end
end


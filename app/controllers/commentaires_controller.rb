class CommentairesController < ApplicationController
  def create

    @commentaire = Commentaire.create(commentaire_params)
    redirect_to commentaire_path(@commentaire.id)

  end


  def index
    @commentaires = Commentaire.all

  def new
   @commentaire = Commentaire.new

  end

  def edit
    @commentaire = Commentaire.find(params[:id])
  end

  def destroy
    @commentaire = Commentaire.find(params[:id])
    @commentaire.destroy
    redirect_to commentaire_path
  end

  def update
    @commentaire = Commentaire.find(params[:id])
    @commentaire.update(commentaire_params)
    redirect_to commentaire_path(@commentaire.id)
  end

  def show
         @commentaire = Commentaire.find(params[:id])
  end

  def index
       @commentaires = Commentaire.all
  end
  
   private

   def commentaire_params
    params.require(:commentaire).permit(:contenu)
   end
end

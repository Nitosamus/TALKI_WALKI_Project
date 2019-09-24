class OffreEmploisController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create]
  def create
      @offreemploi = OffreEmploi.new(user_id: current_user.id,  description: params[:description], lieu: params[:lieu], salaire: params[:salaire], mail: params[:mail])
     if  @offreemploi.save
      flash[:success]="Vous venez de proposer une nouvelle offre d'emploi! Merci pour la collaboration"
      redirect_to offre_emplois_path
    else
      flash[:alert]= "Erreur de remplissage, veillez recommencer"
      redirect_to edit_offre_emploi_path(@offreemploi.id)
    end
  end

  def new
   @offreemploi = OffreEmploi.new
  end

  def edit
    @offreemploi = OffreEmploi.find(params[:id])
  end

  def destroy
    @offreemploi = OffreEmploi.find(params[:id])
   if  @offreemploi.destroy
    redirect_to offre_emplois_path
   end
  end

  def update
    @offreemploi = OffreEmploi.find(params[:id])
    if @offreemploi.update(description: params[:description], lieu: params[:lieu], salaire: params[:salaire], mail: params[:mail])
    redirect_to offre_emploi_path(@offreemploi.id)
  end
  end

  def show
         @offreemploi = OffreEmploi.find(params[:id])
  end

  def index
       @offreemplois = OffreEmploi.all
  end
   private

   def offreemploi_params
    params.require(:offre_emploi).permit(:description,:lieu,:salaire,:mail)
   end
end

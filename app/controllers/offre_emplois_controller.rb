class OffreEmploisController < ApplicationController
  def create
      @offreemploi = OffreEmploi.new(user_id: current_user.id,  description: params[:description], lieu: params[:lieu], salaire: params[:salaire], domaine: params[:domaine], mail: params[:mail])
     if  @offreemploi.save
      redirect_to offre_emplois_path
    else
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
    @offreemploi.destroy
    redirect_to offre_emploi_path
  end

  def update
    @offreemploi = OffreEmploi.find(params[:id])
    @offreemploi.update(offreemploi_params)
    redirect_to offre_emploi_path(@offreEmploi.id)
  end

  def show
         @offreemploi = OffreEmploi.find(params[:id])
  end

  def index
       @offreemplois = OffreEmploi.all
  end
   private

   def offreemploi_params
    params.require(:offreemploi).permit(:description,:lieu,:salaire,:mail)
   end
end

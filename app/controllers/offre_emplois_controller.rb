class OffreEmploisController < ApplicationController
  def create
    @offreemploi = OffreEmploi.create(offreemploi_params)
    redirect_to offre_emploi_path(@offreemploi.id)
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

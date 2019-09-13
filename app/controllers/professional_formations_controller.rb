class ProfessionalFormationsController < ApplicationController
  def create
    @professionalformation = ProfessionalFormation.create(professionalformation_params)
    redirect_to professionalformation_path(@professionalformation.id)
  end

  def new
   @professionalformation = ProfessionalFormation.new
  end

  def edit
    @professionalformation = ProfessionalFormation.find(params[:id])
  end

  def destroy
    @professionalformation = ProfessionalFormation.find(params[:id])
    @professionalformation.destroy
    redirect_to professionalformations_path
  end

  def update
    @professionalformation = ProfessionalFormation.find(params[:id])
    @professionalformation.update(professionalformation_params)
    redirect_to professionalformation_path(@professionalformation.id)
  end

  def show
         @professionalformation = ProfessionalFormation.find(params[:id])
  end

  def index
       @professionalformations = ProfessionalFormation.all
  end
   private

   def professionalformation_params
    params.require(:professionalformation).permit(:objet,:titre,:lieu,:contacte, :mail,:description)
   end
end

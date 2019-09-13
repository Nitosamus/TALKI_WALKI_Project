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
    if @professionalformation.destroy
      redirect_to professional_formations_path
    end
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

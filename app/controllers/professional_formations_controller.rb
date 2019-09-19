class ProfessionalFormationsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create]
  def create
    @professionalformation = ProfessionalFormation.new(user_id: current_user.id, titre: params[:titre], description: params[:description], lieu: params[:lieu], contacte: params[:contacte], mail: params[:mail], domaine:params[:domaine], objet: params[:objet])
    if @professionalformation.save
    redirect_to professional_formations_path
  else
    redirect_to new_professional_formation_path
   end
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
    @professionalformation.update(titre: params[:titre], description: params[:description], lieu: params[:lieu], contacte: params[:contacte], mail: params[:mail], domaine:params[:domaine], objet: params[:objet])
    redirect_to professional_formation_path(@professionalformation.id)
  end

  def show
         @professionalformation = ProfessionalFormation.find(params[:id])
  end

  def index
       @professionalformations = ProfessionalFormation.all
  end
   
end

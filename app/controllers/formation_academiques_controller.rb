class FormationAcademiquesController < ApplicationController
   def new
    @formation= FormationAcademique.new
  end

  def create
    @formation= FormationAcademique.new(titre: params[:titre], description: params[:description], lieu: params[:lieu], contact: params[:contact], mail: params[:mail])
    if @formation.save
      redirect_to formation_academiques_path
    else
       flash[:alert]= "Erreur, recommencer"
      redirect_to new_formation_academique_path
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def show
    @formation= FormationAcademique.find(params[:id])
  end

  def index
    @formation= FormationAcademique.all
  end

  private
  def formation_params
    params.require(:formationAcademique).permit(:titre, :description, :lieu, :contact, :mail)
  end
end

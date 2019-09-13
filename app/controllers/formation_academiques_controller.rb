class FormationAcademiquesController < ApplicationController
   def new
    @formation= FormationAcademique.new
  end
  def show
    @formation= current_user.formation_academique
  end

  def create
    @formation= FormationAcademique.new(user_id: current_user.id, titre: params[:titre], description: params[:description], lieu: params[:lieu], contact: params[:contact], mail: params[:mail], domaine:params[:domaine])
    if @formation.save
      redirect_to formation_academiques_path
    else
       flash[:alert]= "Erreur, recommencer"
      redirect_to new_formation_academique_path
    end
  end

  def edit
    @formation= FormationAcademique.find(params[:id])
  end

  def destroy
    @formation= FormationAcademique.find(params[:id])
    @formations= @formation.destroy
    redirect_to formation_academiques_path
  end

  def update
    @formation= FormationAcademique.find(params[:id])
    if @formations= @formation.update(titre: params[:titre], description: params[:description], lieu: params[:lieu], contact: params[:contact], mail: params[:mail], domaine: params[:domaine])
      redirect_to formation_academique_path(@formation.id)
    else 
      redirect_to edit_formation_academique_path(@formation.id)
    end
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

class FormationAcademiquesController < ApplicationController
<<<<<<< HEAD
   before_action :authenticate_user!, only: [:show, :create]

||||||| merged common ancestors
=======
   before_action :authenticate_user!, only: [:show, :new, :create]

>>>>>>> 7a33d3e1445b146e7f9fb8ab00f174ea6316706b
   def new
    @formation= FormationAcademique.new
  end
  
  def create
    @formation= FormationAcademique.new(user_id: current_user.id, titre: params[:titre], description: params[:description], lieu: params[:lieu], contact: params[:contact], mail: params[:mail], domaine:params[:domaine])
    if @formation.save
      flash[:success]="Vous venez de proposer une nouvelle formation académique"
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
